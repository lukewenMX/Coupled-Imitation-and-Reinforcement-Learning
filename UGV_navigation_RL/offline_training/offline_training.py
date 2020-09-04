from DDPG_offline_training import DDPG
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

    total_training_episodes = 0

    if not os.path.exists(args.path_to_model+args.model_name+args.model_date):
        os.makedirs(args.path_to_model+args.model_name+args.model_date)

    if args.model_name == 'TD3': model = TD3(a_dim=2,s_dim=33,act_noise=0.0,noise_clip=0.0)
    if args.model_name == 'DDPG': model = DDPG(a_dim=2,s_dim=13)

    #load pre_trained model
    if args.pre_train:
        model.load_model(args.path_to_model+args.model_name, args.model_date_+'/')
        #load memory data
        memory = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory.txt')
        print(memory.shape)
        model.memory = memory
        print(model.memory.shape)
        counter = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/memory_counter.txt')
        model.memory_counter = int(counter)
        training_episodes_temp_2 = np.loadtxt(args.path_to_model+args.model_name+args.model_date_+'/total_training_episodes.txt')
        total_training_episodes = int(training_episodes_temp_2)
        print 'load model successfully'

    #pre-initialize memory with 1000 good memory
    # memory = np.loadtxt('initialized_memory.txt')
    # print('memory : ' + str(np.shape(memory)))
    # model.memory = memory
    # counter = np.loadtxt('initialized_memory_counter.txt')
    # model.memory_counter = int(counter)
    # print('model.memory_counter: ' + str(model.memory_counter))

    model.mode(mode='train')

    start_time = time.time()
    for epoch in range(args.train_epoch * 10):
        model.Learn()
        total_training_episodes += 1
        if (epoch+1) % args.epoch_store == 0:
            model.save_model(args.path_to_model+args.model_name, args.model_date+'/')
            #save memory
            memory = model.memory
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory.txt',memory)
            ####
            # model.plot_loss(args.path_to_model+args.model_name, args.model_date+'/')
            ####
            counter = [model.memory_counter]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/memory_counter.txt',counter)
            training_episodes_temp = [total_training_episodes]
            np.savetxt(args.path_to_model+args.model_name+args.model_date+'/total_training_episodes.txt', training_episodes_temp)
            print('epoch: ' + str(epoch+1))
            get_time(start_time)




if __name__ == '__main__':

    folder_name = '/CIRL/CIRL/CIRL_1'

    parser = argparse.ArgumentParser()
    parser.add_argument('--model_name', default='DDPG')
    #Folder name saved as date
    parser.add_argument('--model_date', default=folder_name)
    #Folder stored with trained model weights, which are used for transfer learning
    parser.add_argument('--model_date_', default=folder_name)
    parser.add_argument('--pre_train', default=True)
    parser.add_argument('--path_to_model', default='/home/lukewen/UGV_navigation_RL/neuralnetwork/')
    parser.add_argument('--action_bound', default=[1.0,1.0], type=list)
    parser.add_argument('--train_epoch', default=500, type=int)
    parser.add_argument('--train_step', default=500, type=int)
    parser.add_argument('--test_epoch', default=100, type=int)
    parser.add_argument('--test_step', default=1000, type=int)
    #store the model weights and plot after epoch number
    parser.add_argument('--epoch_store', default=100, type=int)
    parser.add_argument('--cuda', default=False)
    parser.add_argument('--mode', default='train')
    args = parser.parse_args()

    if args.mode == 'train':
        print('training mode')
        train(args)
