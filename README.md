# Coupled-Imitation-and-Reinforcement-Learning
Code implementation for tightly and effiiciently coupling imitation learning and reinforcement learning to derive mobile robot goal-driven navigation under minimum demonstrated data, meanwhile achieving better sample efficiency and training safety.


Required software
ubuntu 14.04
ros-indigo
gazebo 7.0

## Instruction
#### 1)To spawn the simulation environment in customized gazebo world, run the following command.
```sudo cp -r ~/catkin_ws  ./ 
cd catkin_ws && catkin_make ```

##### There may require to install some packages specified in the warning info with the following command
sudo apt-get install ros-kinetic-*

#### 2)To run the Reinforcement learning model training
##### Record the human demonstrated navigation trajectories
cd ~/UGV_navigation_RL/record_action && python record_action.py

#### 3)Pretrain the model with Bootstrapping Imitaion Learning (BIM)
cd ~/UGV_navigation_RL/offline_training && python offline_training.py

#### 4)Training the model with RL combining Near-Optimal-Policy(NOP) strategy
cd ~/UGV_navigation_RL/train_human_exp  && python train_human_exp1.py

#### 5)Transfer the model to the husky-A200 (differential drive mobile robot)
cd ~/UGV_navigation_RL/real_test  && python train_human_exp.py

## Main results
#### Training Curve
<div align=center><img width="480" height="320" src="https://github.com/lukewenMX/Coupled-Imitation-and-Reinforcement-Learning/blob/master/images/TD3_curve.png"/>


#### Performance Video (click the diagram below for playing, the diagram shows us the framework of CIRL)
[![CIRL_VIDEO]<div align=center><img width="480" height="320" src="https://github.com/lukewenMX/Coupled-Imitation-and-Reinforcement-Learning/blob/master/images/CIRL.png"/>](https://www.youtube.com/watch?v=v1kHIaRd9Rw "CIRL_VIDEO")
