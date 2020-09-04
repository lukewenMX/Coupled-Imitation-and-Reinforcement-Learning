from simulation_continue_nav_env import Husky
from DDPG_train_human_exp import DDPG
from TD3 import TD3
from KL import KL
import numpy as np
import matplotlib.pyplot as plt
import torch
import time
import argparse
import os
import rospy
from geometry_msgs.msg import Point
from termcolor import colored


def get_time(start_time):
    m, s = divmod(int(time.time()-start_time), 60)
    h, m = divmod(m, 60)
    print 'Total time spent: %d:%02d:%02d' % (h, m, s)

def train(args):
    total_training_episodes = 0
    total_reward_list = []
    
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

        training_episodes_temp_2 = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_training_episodes.txt')
        total_training_episodes = int(training_episodes_temp_2)
        # total_reward_list_temp = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_reward_list.txt')
        # total_reward_list = total_reward_list_temp.tolist()
        print 'load model successfully'
    a1 = np.array([np.mean(model.memory[:,:15],axis=0)]) # (1,3)
    b1 = np.cov(model.memory[:,:15].T)
    print("memory shape is " + str(model.memory.shape))
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
            state_, reward, terminal = env.step(action_bounded)
            #print('reward: ' + str(reward))
            # model.store_transition(state,action,reward,state_,terminal)
            online_experience.append(np.hstack((state,action,[reward],state_,[terminal])))
            state = state_
            total_reward += reward
            episode_step += 1
            #start optimization after more than 100 transitions
            if(print_memory_counter):
                print('memory_counter: ' + str(model.memory_counter))
            if model.memory_counter > 1000:
                model.Learn()
                # if(print_once):
                #     print('memory_counter reached 1000. learning...')
                #     print_once = False
                #     print_memory_counter = False
            if terminal or episode_step > args.train_step:
                break
        a2 = np.array([np.mean(np.array(online_experience)[:,:15],axis=0)])
        # print(a2)
        b2 = np.cov(np.array(online_experience)[:,:15].T)
        # print(b2)
        kl = KL(a1,b1,a2,b2,14)
        if kl < 800:

            print("online shape",np.array(online_experience).shape)
            print("append shape",np.array([[float(kl)]*len(online_experience)]).shape)
            online_experience = np.column_stack((np.array(online_experience),np.array([[float(kl)]*len(online_experience)]).T))
            print("online_experience shape is",online_experience.shape)
            model.memory = np.concatenate((model.memory,np.array(online_experience)),axis=0)
            model.memory_counter += len(online_experience)
        total_reward_list.append(total_reward)
        total_training_episodes += 1

        print 'epoch:', epoch,  '||',  'Reward:', total_reward, '||',  'total_training_episodes:', total_training_episodes, '||',  'memory_counter:', model.memory_counter

        if (epoch+1) % args.epoch_store == 0:
            model.save_model(args.path_to_model+args.model_name, args.model_date+'/')
            #save memory
            memory = model.memory
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory.txt',memory)
            model.plot_loss(args.path_to_model+args.model_name, args.model_date+'/')
            counter = [model.memory_counter]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory_counter.txt',counter)
            training_episodes_temp = [total_training_episodes]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_training_episodes.txt', training_episodes_temp)
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_reward_list.txt', total_reward_list)

            plt.figure('total_reward_list')
            plt.plot(np.arange(len(total_reward_list)), total_reward_list)
            plt.ylabel('Total_reward')
            plt.xlabel('training epoch')
            plt.savefig(args.path_to_model+args.model_name+args.model_date+'/reward.png')
            get_time(start_time)
            plt.clf()
            #plt.close()

def test(args):
    # print("1")
    # rospy.init_node("waypoint")
    env = Husky()
    # failed = 0
    if args.model_name == 'TD3': model = TD3(a_dim=env.action_dim,s_dim=env.state_dim)
    if args.model_name == 'DDPG': model = DDPG(a_dim=env.action_dim,s_dim=env.state_dim)
    #model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')

    if args.online_replay:
        model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')
    #     #load memory data
    #     memory = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory.txt')
    #     model.memory = memory
    #     counter = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory_counter.txt')
    #     model.memory_counter = int(counter)

    #     training_episodes_temp_2 = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_training_episodes.txt')
    #     total_training_episodes = int(training_episodes_temp_2)
    #     # total_reward_list_temp = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_reward_list.txt')
    #     # total_reward_list = total_reward_list_temp.tolist()
    #     print 'load model successfully'
    # a1 = np.array([np.mean(model.memory[:,:15],axis=0)]) # (1,3)
    # b1 = np.cov(model.memory[:,:15].T)
    # print("memory shape is " + str(model.memory.shape))


    model.mode(mode='test')
    start = time.time()
    waypoints = [[7.5,5],[0,8.5],[-7.5,7.5],[-7.5,0],[-7.5,-8],[0,-8],[8,-8]]#,[7,0],[-7,7],[-7,-7],[7,-7]]
    # waypoint=[7.8,7.8]
    reward_list = []
    # goal = [-8,8]
    # print("2")
    for goal in waypoints:
    # while not rospy.is_shutdown():
    #     try:
    #         print("hi")
    #         goal = rospy.wait_for_message("waypoint",Point)[0:-1]
    #         print(goal)
    #     except:
    #         print("Waiting for the target waypoint!")
        print(goal)
        online_experience = []
        state = env.retarget(goal)
        # env.target_vis(goal)
        total_reward = 0
        for step in range(args.test_step):
            # print("Step")
            # if env.check_joy_action()[0] == True:
            #     # print("Action from agent")
            #     action = env.check_joy_action()[1]
            # else:
                # print("action from agent")
            action = model.choose_action(state,noise=False)
            action_bounded = np.multiply(action,np.array(args.action_bound))
            state_, reward, collision, success = env.step(action_bounded,goal)
            terminal = collision or success 
            # online_experience.append(np.hstack((state,action,[reward],state_,[terminal])))
            #state_, reward, terminal = env.step(np.multiply(action,np.array(args.action_bound)))
            state = state_
            total_reward += reward
            if collision or step == args.test_step - 1:
                #env.reset()
                print colored("Failed!",'red')
                break
            elif success:
                print colored("Success!","green") 
                break
        # try:
        #     print("hi")
        #     goal = rospy.wait_for_message("waypoint",Point)[0:-1]
        # except:
        #     print("Waiting for the target waypoint!")
        # a2 = np.array([np.mean(np.array(online_experience)[:,:15],axis=0)])
        # print(a2)
        # b2 = np.cov(np.array(online_experience)[:,:15].T)
        # print(b2)
        # try:
        #     kl = KL(a1,b1,a2,b2,14)
        # except np.linalg.LinAlgError as err:
        #     print colored("KL error!","red")
        #     kl = 10000
        # if abs(kl) < 3000:
        #     # print("online shape",np.array(online_experience).shape)
        #     # print("append shape",np.array([[float(kl)]*len(online_experience)]).shape)
        #     online_experience = np.column_stack((np.array(online_experience),np.array([[float(kl)]*len(online_experience)]).T))
        #     # print("online_experience shape is",online_experience.shape)
        #     if model.memory_counter + len(online_experience) < model.memory_size:
        #         model.memory[model.memory_counter:model.memory_counter+len(online_experience),:] = online_experience
        #     else:
        #         model.memory = model.memory[model.memory[:,-1].argsort()]
        #         if abs(kl) < model.memory[model.memory_size-1,-1]:
        #             model.memory[-len(online_experience):,:] = online_experience
        #         else:
        #             pass 
        #     # print("online_experience shape is",online_experience.shape)
        #     #model.memory = np.concatenate((model.memory,np.array(online_experience)),axis=0)
        #     model.memory_counter += len(online_experience)
        # total_training_episodes += 1
        reward_list.append(total_reward)
        print   'Reward:', total_reward
    print np.mean(reward_list)
    print time.time()- start
            
        # memory = model.memory
        # np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory.txt',memory)
        #     # model.plot_loss(args.path_to_model+args.model_name, args.model_date+'/')
        # counter = [model.memory_counter]
        # np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory_counter.txt',counter)
            # training_episodes_temp = [total_training_episodes]
            # np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_training_episodes.txt', training_episodes_temp)
            # np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_reward_list.txt', total_reward_list)
    
if __name__ == '__main__':

    # folder_name = '/old_human_exp_comparison/human_exp_1_single_point'
    # folder_name = '/old_human_exp_comparison/human_exp_2_single_point'
    # folder_name = '/old_human_exp_comparison/human_exp_3_single_point'

    # folder_name = '/with_walls/human_exp_1_single_point'
    # folder_name = '/with_walls/human_exp_2_single_point'
    # folder_name = '/with_walls/human_exp_3_single_point'
    # folder_name = '/with_walls/human_exp_4_single_point'
    # folder_name = '/with_walls/human_exp_5_single_point'
    folder_name = '/CIRL/CIRL/DATA/CIRL_5(test_model)'

    parser = argparse.ArgumentParser()
    parser.add_argument('--model_name', default='DDPG')
    #Folder name saved as date
    parser.add_argument('--model_date', default=folder_name)
    #Folder stored with trained model weights, which are used for transfer learning
    parser.add_argument('--model_date_', default=folder_name)
    parser.add_argument('--pre_train', default=True)
    parser.add_argument("--online_replay", default = True)
    parser.add_argument('--path_to_model', default='/home/lukewen/UGV_navigation_RL/neuralnetwork/')
    parser.add_argument('--action_bound', default=[0.4,0.7], type=list) # 0.3 0.5
    parser.add_argument('--train_epoch', default=1000, type=int)
    parser.add_argument('--train_step', default=1000, type=int)
    parser.add_argument('--test_epoch', default=100, type=int)
    parser.add_argument('--test_step', default=250, type=int)
    #store the model weights and plot after epoch number
    parser.add_argument('--epoch_store', default=100, type=int)
    parser.add_argument('--cuda', default=False)
    parser.add_argument('--mode', default='test')
    args = parser.parse_args()
    
    if args.mode == 'train':
        print('training mode')
        train(args)
    if args.mode == 'test':
        print('test mode')
        test(args)
