from env_train_human_exp import Husky
from DDPG_train_human_exp import DDPG
from TD3 import TD3
from KL import KL
import numpy as np
import matplotlib.pyplot as plt
import torch
import time
import argparse
import os
from termcolor import colored

def get_time(start_time):
    m, s = divmod(int(time.time()-start_time), 60)
    h, m = divmod(m, 60)
    print 'Total time spent: %d:%02d:%02d' % (h, m, s)


def train(args):
    print("train!!!!")
    total_training_episodes = 0
    total_reward_list = []
    
    if not os.path.exists(args.path_to_model+args.model_name+args.model_date):
        os.makedirs(args.path_to_model+args.model_name+args.model_date)

    env = Husky()

    if args.model_name == 'TD3': model = TD3(a_dim=env.action_dim,s_dim=env.state_dim)
    if args.model_name == 'DDPG': model = DDPG(a_dim=env.action_dim,s_dim=env.state_dim)

    #load pre_trained model
    if args.pre_train:
        print("hi")
        model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')
        #load memory data
        memory_init = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+args.init_folder+'/memory.txt')
        memory = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory.txt')
        model.memory = memory
        counter = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory_counter.txt')
        model.memory_counter = int(counter)
        print("counter")
        training_episodes_temp_2 = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_training_episodes.txt')
        total_training_episodes = int(training_episodes_temp_2)
        print("episodes")
        total_reward_list_temp = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_reward_list.txt')
        total_reward_list = total_reward_list_temp.tolist()
        print 'load model successfully'
    a1 = np.array([np.mean(memory_init[:,10:13],axis=0)]) # (1,3)
    b1 = np.cov(memory_init[:,10:13].T)
    print("memory shape is " + str(model.memory.shape))
    print(model.memory_counter)
    # np.linalg.pinv(b1)
    # print("Okay")
    

    model.mode(mode='train')

    print_once = True
    print_memory_counter = True
    print_return_learning = False

    start_time = time.time()
    for epoch in range(args.train_epoch):
        state = env.reset()
        total_reward = 0
        episode_step = 0
        online_experience = []
        while True:

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
            state_, reward, collision, success = env.step(action_bounded)
            terminal = collision or success
            #print('reward: ' + str(reward))
            # model.store_transition(state,action,reward,state_,terminal)
            online_experience.append(np.hstack((state,action,[reward],state_,[terminal])))
            state = state_
            total_reward += reward
            episode_step += 1
            #start optimization after more than 100 transitions
            # if(print_memory_counter):
            #     print('memory_counter: ' + str(model.memory_counter))
            # if model.memory_counter > 1000:
            
            model.Learn()
                # if(print_once):
                #     print('memory_counter reached 1000. learning...')
                #     print_once = False
                #     print_memory_counter = False
            if terminal or episode_step > args.train_step:
                break
        a2 = np.array([np.mean(np.array(online_experience)[:,10:13],axis=0)])
        # print(a2)
        b2 = np.cov(np.array(online_experience)[:,10:13].T)
        # print(b2)
        try:
            kl = KL(a1,b1,a2,b2,3)
        except np.linalg.LinAlgError as err:
            print colored("KL error!","red")
            kl = 2999
        if abs(kl) < 2000:
            # print("online shape",np.array(online_experience).shape)
            # print("append shape",np.array([[float(kl)]*len(online_experience)]).shape)
            online_experience = np.column_stack((np.array(online_experience),np.array([[float(kl)]*len(online_experience)]).T))
            # print("online_experience shape is",online_experience.shape)
            if model.memory_counter + len(online_experience) < model.memory_size:
                model.memory[model.memory_counter:model.memory_counter+len(online_experience),:] = online_experience
            else:
                model.memory = model.memory[model.memory[:,-1].argsort()]
                if abs(kl) < model.memory[model.memory_size-1,-1]:
                    model.memory[-len(online_experience):,:] = online_experience
                else:
                    pass 
            # model.memory = np.concatenate((model.memory,np.array(online_experience)),axis=0)
            model.memory_counter += len(online_experience)
        total_reward_list.append(total_reward)
        total_training_episodes += 1

        print ('epoch:', epoch,  '||',  'Reward:', total_reward, '||',  'total_training_episodes:', total_training_episodes, '||',  'memory_counter:', model.memory_counter)

        if (epoch+1) % args.epoch_store == 0:
            model.save_model(args.path_to_model+args.model_name, args.model_date+'/')
            # save memory
            memory = model.memory
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory.txt',memory)
            # model.plot_loss(args.path_to_model+args.model_name, args.model_date+'/')
            counter = [model.memory_counter]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory_counter.txt',counter)
            training_episodes_temp = [total_training_episodes]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_training_episodes.txt', training_episodes_temp)
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_reward_list.txt', total_reward_list)

            # plt.figure('total_reward_list')
            # plt.plot(np.arange(len(total_reward_list)), total_reward_list)
            # plt.ylabel('Total_reward')
            # plt.xlabel('training epoch')
            # plt.savefig(args.path_to_model+args.model_name+args.model_date+'/reward.png')
            get_time(start_time)
            # plt.clf()
            #plt.close()
        if len(total_reward_list) > 105:
            reward_list = np.array((total_reward_list))
            reward_true = reward_list[-105:] > 3.5
            if reward_true.all() == True:
                exit() 
            else:
                pass
        else:
            pass

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
            state_, reward, terminal,success = env.step(action_bounded)
            #state_, reward, terminal = env.step(np.multiply(action,np.array(args.action_bound)))
            state = state_
            total_reward += reward
            if terminal or step == args.test_step:
                print colored("Failed this time.","red")
                break
            elif success:
                print colored("Succeed this time.","green")
                break

        reward_list.append(total_reward)
        print 'epoch:', epoch,  '||',  'Reward:', total_reward

if __name__ == '__main__':

    # folder_name = '/old_human_exp_comparison/human_exp_1_single_point'
    # folder_name = '/old_human_exp_comparison/human_exp_2_single_point'
    # folder_name = '/old_human_exp_comparison/human_exp_3_single_point'

    # folder_name = '/with_walls/human_exp_1_single_point'
    # folder_name = '/with_walls/human_exp_2_single_point'
    # folder_name = '/with_walls/human_exp_3_single_point'
    # folder_name = '/with_walls/human_exp_4_single_point'
    # folder_name = '/with_walls/human_exp_5_single_point'
    folder_name = '/CIRL/CIRL/CIRL_8'

    parser = argparse.ArgumentParser()
    parser.add_argument('--model_name', default='DDPG')
    parser.add_argument('--init_folder',default='/init_folder')
    #Folder name saved as date
    parser.add_argument('--model_date', default=folder_name)
    #Folder stored with trained model weights, which are used for transfer learning
    parser.add_argument('--model_date_', default=folder_name)
    parser.add_argument('--pre_train', default=True)
    parser.add_argument('--path_to_model', default='/home/lukewen/UGV_navigation_RL/neuralnetwork/')
    parser.add_argument('--action_bound', default=[1.0,1.0], type=list)
    parser.add_argument('--train_epoch', default=3000, type=int)
    parser.add_argument('--train_step', default=150, type=int)
    parser.add_argument('--test_epoch', default=100, type=int)
    parser.add_argument('--test_step', default=300, type=int)
    #store the model weights and plot after epoch number
    parser.add_argument('--epoch_store', default=10, type=int)
    parser.add_argument('--cuda', default=True)
    parser.add_argument('--mode', default='train')
    args = parser.parse_args()

    if args.mode == 'train':
        print('training mode')
        train(args)
    if args.mode == 'test':
        print('test mode')
        test(args)
