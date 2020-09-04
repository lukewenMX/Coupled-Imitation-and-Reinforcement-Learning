import time
import numpy as np
import matplotlib.pyplot as plt

#===================================================================================================================================

memory_1 = np.loadtxt('human_exp_1_single_point/memory.txt')

memory_2 = np.loadtxt('no_exp_1_single_point/memory.txt')

#===================================================================================================================================

if __name__ == "__main__":
    
    program_starts = time.time()
    
    episode_success = np.zeros((30))
    
    m, n = np.shape(memory_1)
    for i in range(m):
        if(memory_1[i,29] == 1):
            episode_success = np.vstack((episode_success,(memory_1[i,:])))
            
    episode_success2 = np.zeros((30))
    m, n = np.shape(memory_2)
    for i in range(m):
        if(memory_2[i,29] == 1):
            episode_success2 = np.vstack((episode_success2,(memory_2[i,:])))
    
#    human_exp_1_steps = human_exp_1_array[1:1001, :]
#    human_exp_2_steps = human_exp_2_array[1:1001, :]
#    human_exp_3_steps = human_exp_3_array[1:1001, :]
#    human_exp_4_steps = human_exp_4_array[1:1001, :]
#    human_exp_5_steps = human_exp_5_array[1:1001, :]
#    
#    no_exp_1_steps = no_exp_1_array[1:1001, :]
#    no_exp_2_steps = no_exp_2_array[1:1001, :]
#    no_exp_3_steps = no_exp_3_array[1:1001, :]
#    no_exp_4_steps = no_exp_4_array[1:1001, :]
#    no_exp_5_steps = no_exp_5_array[1:1001, :]
#    
#    avg_human_exp_1_steps = human_exp_1_steps.mean(axis=0)
##    plt.figure('avg_human_exp_1_steps')
##    plt.plot(np.arange(len(avg_human_exp_1_steps)), avg_human_exp_1_steps)
##    plt.ylabel('reward')
##    plt.xlabel('steps')
#    
#    avg_human_exp_2_steps = human_exp_2_steps.mean(axis=0)
#    plt.figure('avg_human_exp_2_steps')
#    plt.plot(np.arange(len(avg_human_exp_2_steps)), avg_human_exp_2_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    now = time.time()
    print('run time: ' + str(now - program_starts))
    
    