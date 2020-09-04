from env_train_human_exp import Husky
from DDPG_train_human_exp import DDPG
from TD3 import TD3
import numpy as np
import matplotlib.pyplot as plt
import torch
import time
import argparse
import os


def get_time(start_time):
    m, s = divmod(int(time.time()-start_time), 60)
    h, m = divmod(m, 60)
    print 'Total time spent: %d:%02d:%02d' % (h, m, s)

def train(args):

    if not os.path.exists(args.path_to_model+args.model_name+args.model_date):
        os.makedirs(args.path_to_model+args.model_name+args.model_date)

    env = Husky()

    if args.model_name == 'TD3': model = TD3(a_dim=env.action_dim,s_dim=env.state_dim)
    if args.model_name == 'DDPG': model = DDPG(a_dim=env.action_dim,s_dim=env.state_dim)

    #load pre_trained model
    if args.pre_train:
        model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')
        #load memory data
        memory = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory.txt')
        model.memory = memory
        counter = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory_counter.txt')
        model.memory_counter = int(counter)
        print 'load model successfully'



    model.mode(mode='train')

    print_once = True
    print_memory_counter = True
    print_return_learning = False

    total_reward_list = []
    start_time = time.time()
    #state = env.reset()
    for epoch in range(args.train_epoch):
        state = env.reset()
        total_reward = 0
        for i in range(args.train_step):

            #print('model.memory_counter: ' + str(model.memory_counter))
            # if(model.memory_counter < 1000):
            #     action = env.get_joy_action()
            # else:
            #     checkJoyAction, receivedJoyAction = env.check_joy_action()
            #     #print('checkJoyAction : ' + str(checkJoyAction))
            #     if(checkJoyAction):
            #         action = receivedJoyAction
            #         print('user intervention')
            #         print_return_learning = True
            #     else:
            #         if(print_return_learning):
            #             print('return to learning')
            #         print_return_learning = False
            #         action = model.choose_action(state)

            #action = env.get_joy_action()

            action = model.choose_action(state)

            action_bounded = np.multiply(action,np.array(args.action_bound))
            #print('action[0]: ' + str(action[0]) + '   action[1]: ' + str(action[1]))
            #state_, reward, terminal = env.step(np.multiply(action,np.array(args.action_bound)))
            state_, reward, terminal = env.step(action_bounded)
            #print('reward: ' + str(reward))
            model.store_transition(state,action,reward,state_,terminal)
            state = state_
            total_reward += reward
            #start optimization after more than 100 transitions
            if(print_memory_counter):
                print('memory_counter: ' + str(model.memory_counter))
            if model.memory_counter > 1000:
                model.Learn()
                if(print_once):
                    print('memory_counter reached 1000. learning...')
                    print_once = False
                    print_memory_counter = False
            if terminal:
                state = env.reset()
            '''
            if (i+1) % 200 == 0:
                env.target_generate()
                env.target_vis(env.target_pos)
            '''
        total_reward_list.append(total_reward)
        print 'epoch:', epoch,  '||',  'Reward:', total_reward

        if (epoch+1) % args.epoch_store == 0:
            model.save_model(args.path_to_model+args.model_name, args.model_date+'/')
            #save memory
            memory = model.memory
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory.txt',memory)
            model.plot_loss(args.path_to_model+args.model_name, args.model_date+'/')
            counter = [model.memory_counter]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory_counter.txt',counter)

            plt.figure()
            plt.plot(np.arange(len(total_reward_list)), total_reward_list)
            plt.ylabel('Total_reward')
            plt.xlabel('training epoch')
            plt.savefig(args.path_to_model+args.model_name+args.model_date+'/reward.png')
            get_time(start_time)
            plt.clf()
            #plt.close()

def test(args):
    env = Husky()

    if args.model_name == 'TD3': model = TD3(a_dim=env.action_dim,s_dim=env.state_dim)
    if args.model_name == 'DDPG': model = DDPG(a_dim=env.action_dim,s_dim=env.state_dim)
    model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')
    model.mode(mode='test')

    reward_list = []
    for epoch in range(args.test_epoch):
        state = env.reset()
        total_reward = 0
        for step in range(args.test_step):
            action = model.choose_action(state,noise=None)
            action_bounded = np.multiply(action,np.array(args.action_bound))
            state_, reward, terminal = env.step(action_bounded)
            #state_, reward, terminal = env.step(np.multiply(action,np.array(args.action_bound)))
            state = state_
            total_reward += reward
            if terminal:
                #env.reset()
                state = env.reset()

        reward_list.append(total_reward)
        print 'epoch:', epoch,  '||',  'Reward:', total_reward

if __name__ == '__main__':

    folder_name = '/20_03_2019_cpu_human_exp_multiple_point'

    parser = argparse.ArgumentParser()
    parser.add_argument('--model_name', default='DDPG')
    #Folder name saved as date
    parser.add_argument('--model_date', default=folder_name)
    #Folder stored with trained model weights, which are used for transfer learning
    parser.add_argument('--model_date_', default=folder_name)
    parser.add_argument('--pre_train', default=True)
    parser.add_argument('--path_to_model', default='/home/lee/UGV_navigation_RL_2/weights/')
    parser.add_argument('--action_bound', default=[0.5,0.5], type=list)
    parser.add_argument('--train_epoch', default=100, type=int)
    parser.add_argument('--train_step', default=1000, type=int)
    parser.add_argument('--test_epoch', default=100, type=int)
    parser.add_argument('--test_step', default=1000, type=int)
    #store the model weights and plot after epoch number
    parser.add_argument('--epoch_store', default=1, type=int)
    parser.add_argument('--cuda', default=False)
    parser.add_argument('--mode', default='test')
    args = parser.parse_args()

    if args.mode == 'train':
        print('training mode')
        train(args)
    if args.mode == 'test':
        print('test mode')
        test(args)