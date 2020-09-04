import time
import numpy as np
import matplotlib.pyplot as plt

#===================================================================================================================================

human_exp_1_array = np.loadtxt('human_exp_1_single_point/total_reward_array.txt')
human_exp_2_array = np.loadtxt('human_exp_2_single_point/total_reward_array.txt')
human_exp_3_array = np.loadtxt('human_exp_3_single_point/total_reward_array.txt')
human_exp_4_array = np.loadtxt('human_exp_4_single_point/total_reward_array.txt')
human_exp_5_array = np.loadtxt('human_exp_5_single_point/total_reward_array.txt')

no_exp_1_array = np.loadtxt('no_exp_1_single_point/total_reward_array.txt')
no_exp_2_array = np.loadtxt('no_exp_2_single_point/total_reward_array.txt')
no_exp_3_array = np.loadtxt('no_exp_3_single_point/total_reward_array.txt')
no_exp_4_array = np.loadtxt('no_exp_4_single_point/total_reward_array.txt')
no_exp_5_array = np.loadtxt('no_exp_5_single_point/total_reward_array.txt')

human_exp_kl_1_array = np.loadtxt("KL_training_1/total_reward_array.txt")
human_exp_kl_5_array = np.loadtxt("KL_training_5/total_reward_array.txt")
# human_exp_1_list = np.loadtxt('human_exp_1_single_point/total_reward_list.txt')
# human_exp_2_list = np.loadtxt('human_exp_2_single_point/total_reward_list.txt')
# human_exp_3_list = np.loadtxt('human_exp_3_single_point/total_reward_list.txt')
# human_exp_4_list = np.loadtxt('human_exp_4_single_point/total_reward_list.txt')
# human_exp_5_list = np.loadtxt('human_exp_5_single_point/total_reward_list.txt')

# no_exp_1_list = np.loadtxt('no_exp_1_single_point/total_reward_list.txt')
# no_exp_2_list = np.loadtxt('no_exp_2_single_point/total_reward_list.txt')
# no_exp_3_list = np.loadtxt('no_exp_3_single_point/total_reward_list.txt')
# no_exp_4_list = np.loadtxt('no_exp_4_single_point/total_reward_list.txt')
# no_exp_5_list = np.loadtxt('no_exp_5_single_point/total_reward_list.txt')

#===================================================================================================================================

if __name__ == "__main__":
    
    program_starts = time.time()
    
    human_exp_1_steps = human_exp_1_array[1:1001, :]
    human_exp_2_steps = human_exp_2_array[1:1001, :]
    human_exp_3_steps = human_exp_3_array[1:1001, :]
    human_exp_4_steps = human_exp_4_array[1:1001, :]
    human_exp_5_steps = human_exp_5_array[1:1001, :]
    
    no_exp_1_steps = no_exp_1_array[1:1001, :]
    no_exp_2_steps = no_exp_2_array[1:1001, :]
    no_exp_3_steps = no_exp_3_array[1:1001, :]
    no_exp_4_steps = no_exp_4_array[1:1001, :]
    no_exp_5_steps = no_exp_5_array[1:1001, :]
    
    human_exp_kl_1_array = human_exp_kl_1_array[1:1001,:]
    human_exp_kl_5_array = human_exp_kl_5_array[1:1001,:]

    avg_human_exp_1_steps = human_exp_1_steps.mean(axis=0)
    np.savetxt('exp_step_1.csv',avg_human_exp_1_steps)
#    plt.figure('avg_human_exp_1_steps')
#    plt.plot(np.arange(len(avg_human_exp_1_steps)), avg_human_exp_1_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_human_exp_2_steps = human_exp_2_steps.mean(axis=0)
    np.savetxt('exp_step_2.csv',avg_human_exp_2_steps)
#    plt.figure('avg_human_exp_2_steps')
#    plt.plot(np.arange(len(avg_human_exp_2_steps)), avg_human_exp_2_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_human_exp_3_steps = human_exp_3_steps.mean(axis=0)
    np.savetxt('exp_step_3.csv',avg_human_exp_3_steps)
#    plt.figure('avg_human_exp_3_steps')
#    plt.plot(np.arange(len(avg_human_exp_3_steps)), avg_human_exp_3_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_human_exp_4_steps = human_exp_4_steps.mean(axis=0)
    np.savetxt('exp_step_4.csv',avg_human_exp_4_steps)
#    plt.figure('avg_human_exp_4_steps')
#    plt.plot(np.arange(len(avg_human_exp_4_steps)), avg_human_exp_4_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_human_exp_5_steps = human_exp_5_steps.mean(axis=0)
    np.savetxt('exp_step_5.csv',avg_human_exp_5_steps)
#    plt.figure('avg_human_exp_5_steps')
#    plt.plot(np.arange(len(avg_human_exp_5_steps)), avg_human_exp_5_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_no_exp_1_steps = no_exp_1_steps.mean(axis=0)
    np.savetxt('no_exp_step_1.csv',avg_no_exp_1_steps)
#    plt.figure('avg_no_exp_1_steps')
#    plt.plot(np.arange(len(avg_no_exp_1_steps)), avg_no_exp_1_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_no_exp_2_steps = no_exp_2_steps.mean(axis=0)
    np.savetxt('no_exp_step_2.csv',avg_no_exp_2_steps)
#    plt.figure('avg_no_exp_2_steps')
#    plt.plot(np.arange(len(avg_no_exp_2_steps)), avg_no_exp_2_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_no_exp_3_steps = no_exp_3_steps.mean(axis=0)
    np.savetxt('no_exp_step_3.csv',avg_no_exp_3_steps)
#    plt.figure('avg_no_exp_3_steps')
#    plt.plot(np.arange(len(avg_no_exp_3_steps)), avg_no_exp_3_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_no_exp_4_steps = no_exp_4_steps.mean(axis=0)
    np.savetxt('no_exp_step_4.csv',avg_no_exp_4_steps)
#    plt.figure('avg_no_exp_4_steps')
#    plt.plot(np.arange(len(avg_no_exp_4_steps)), avg_no_exp_4_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    
    avg_no_exp_5_steps = no_exp_5_steps.mean(axis=0)
    np.savetxt('no_exp_step_5.csv',avg_no_exp_5_steps)
#    plt.figure('avg_no_exp_5_steps')
#    plt.plot(np.arange(len(avg_no_exp_5_steps)), avg_no_exp_5_steps)
#    plt.ylabel('reward')
#    plt.xlabel('steps')
    avg_human_exp_kl_1_steps = human_exp_kl_1_array.mean(axis=0)
    np.savetxt("human_exp_kl_step_1.csv",avg_human_exp_kl_1_steps)

    avg_human_exp_kl_5_steps = human_exp_kl_5_array.mean(axis=0)
    np.savetxt("human_exp_kl_step_5.csv",avg_human_exp_kl_5_steps)

    
    avg_human_exp_steps = (avg_human_exp_1_steps + avg_human_exp_2_steps + avg_human_exp_3_steps + avg_human_exp_4_steps + avg_human_exp_5_steps) / 5
    avg_no_exp_steps = (avg_no_exp_1_steps + avg_no_exp_2_steps + avg_no_exp_3_steps + avg_no_exp_4_steps + avg_no_exp_5_steps) / 5
    plt.figure('steps comparison')
    plt.plot(np.arange(len(avg_human_exp_steps)), avg_human_exp_steps, 'r')
    plt.plot(np.arange(len(avg_no_exp_steps)), avg_no_exp_steps, 'b')
    plt.ylabel('reward')
    plt.xlabel('steps')
    
    # human_exp_1_episodes = human_exp_1_list[0:1000]
    # human_exp_2_episodes = human_exp_2_list[0:1000]
    # human_exp_3_episodes = human_exp_3_list[0:1000]
    # human_exp_4_episodes = human_exp_4_list[0:1000]
    # human_exp_5_episodes = human_exp_5_list[0:1000]
    
    # no_exp_1_episodes = no_exp_1_list[0:1000]
    # no_exp_2_episodes = no_exp_2_list[0:1000]
    # no_exp_3_episodes = no_exp_3_list[0:1000]
    # no_exp_4_episodes = no_exp_4_list[0:1000]
    # no_exp_5_episodes = no_exp_5_list[0:1000]
    
    # plt.figure('human_exp_1_episodes')
    # plt.plot(np.arange(len(human_exp_1_episodes)), human_exp_1_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('human_exp_2_episodes')
    # plt.plot(np.arange(len(human_exp_2_episodes)), human_exp_2_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('human_exp_3_episodes')
    # plt.plot(np.arange(len(human_exp_3_episodes)), human_exp_3_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('human_exp_4_episodes')
    # plt.plot(np.arange(len(human_exp_4_episodes)), human_exp_4_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('human_exp_5_episodes')
    # plt.plot(np.arange(len(human_exp_5_episodes)), human_exp_5_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('no_exp_1_episodes')
    # plt.plot(np.arange(len(no_exp_1_episodes)), no_exp_1_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('no_exp_2_episodes')
    # plt.plot(np.arange(len(no_exp_2_episodes)), no_exp_2_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('no_exp_3_episodes')
    # plt.plot(np.arange(len(no_exp_3_episodes)), no_exp_3_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('no_exp_4_episodes')
    # plt.plot(np.arange(len(no_exp_4_episodes)), no_exp_4_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # plt.figure('no_exp_5_episodes')
    # plt.plot(np.arange(len(no_exp_5_episodes)), no_exp_5_episodes)
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # avg_human_exp_episodes = (human_exp_1_episodes + human_exp_2_episodes + human_exp_3_episodes + human_exp_4_episodes + human_exp_5_episodes) / 5
    # avg_no_exp_episodes = (no_exp_1_episodes + no_exp_2_episodes + no_exp_3_episodes + no_exp_4_episodes + no_exp_5_episodes) / 5
    # plt.figure('episodes comparison')
    # plt.plot(np.arange(len(avg_human_exp_episodes)), avg_human_exp_episodes, 'r')
    # plt.plot(np.arange(len(avg_no_exp_episodes)), avg_no_exp_episodes, 'b')
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    # avg_human_exp_list = []
    # avg_no_exp_list = []
    
    # for i in range(0,1000,10):
    #     avg_human_exp_list.append(avg_human_exp_episodes[i])
    #     avg_no_exp_list.append(avg_no_exp_episodes[i])
    
    
    # plt.figure('episodes comparison 2')
    # plt.plot(np.arange(len(avg_human_exp_list)), avg_human_exp_list, 'r')
    # plt.plot(np.arange(len(avg_no_exp_list)), avg_no_exp_list, 'b')
    # plt.ylabel('reward')
    # plt.xlabel('training episode')
    
    now = time.time()
    print('run time: ' + str(now - program_starts))
    
    