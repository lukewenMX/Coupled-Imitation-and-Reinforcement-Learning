#! /usr/bin/env python

"""Coded by Luke Wen on 21st June 2019 
For simulation in gazebo to continuly navigate to the provided waypoints."""

import rospy 
import math 
import time 
import numpy as np 
import tf
from tf.transformations import quaternion_from_euler,euler_from_quaternion
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from sensor_msgs.msg import LaserScan
# from gazebo_msgs.msg import LinkStates
from copy import deepcopy
# from gazebo_msgs.srv import *
from geometry_msgs.msg import *
from std_srvs.srv import Empty

class Husky(object):
    get_counter = 0  # class variable
    def __init__(self):
        """the initialized function where the sensor raw data, current position of the robot and the desired goal are handled"""
        rospy.init_node("husky_env")
        self.laser = []
        self.pose = [0,0,0]
        self.target_pose = [0,0]
        self.vel_pub = rospy.Publisher("/RLEnv/cmd_vel",Twist,queue_size=5)
        # self.laser_sub = rospy.Subscriber("/scan",LaserScan,self.laserCallback)
        self.position_sub = rospy.Subscriber('/husky2_robot_pose',Odometry,self.poseCallback)
        # self.goal_sub = rospy.Subscriber("/goal",Odometry,self.goalCallback)
        # self.position_sub = rospy.Subscriber("/gazebo/link_states",LinkStates,self.poseCallback)
        self.prev_dist = (np.linalg.norm([0.0 - self.target_pose[0],0.0 - self.target_pose[1]]))
        # self.unpause = rospy.ServiceProxy('/gazebo/unpause_physics', Empty)
        # self.pause = rospy.ServiceProxy('/gazebo/pause_physics', Empty)
        self.state_dim = 13
        self.action_dim = 2

    def discretize_observation(self,laser,new_ranges=10):
        """Preprocess the raw laser scan data by discretization"""
        discretized_ranges = []
        min_range = 0.35
        done = False
        # print(len(laser.ranges))
        mod = (len(laser.ranges)) / new_ranges
        # print(mod)
        for i, item in enumerate(laser.ranges):
            if ((i+1) % mod == 0):
                if laser.ranges[i] == float('Inf') or laser.ranges[i]== float("nan"):
                    discretized_ranges.append(10.0)
                else:
                    discretized_ranges.append(laser.ranges[i])
            if (min_range > laser.ranges[i] > 0):
                done = True
                print("Hit obstacle!")
        discretized_ranges = np.array(discretized_ranges) # Update the laser info whenever the new topic /scan is available.
        laser = discretized_ranges
        # print(len(laser))
        return laser, done

    def poseCallback(self,odom):
        """Get the current position updated from the topic /husky1_pose"""
        self.pose[0] = odom.pose.pose.position.x
        self.pose[1] = odom.pose.pose.position.y
        quaternion = (odom.pose.pose.orientation.x,odom.pose.pose.orientation.y,odom.pose.pose.orientation.z,odom.pose.pose.orientation.w)
        robot_orientation = tf.transformations.euler_from_quaternion(quaternion)
        self.pose[2] = robot_orientation[2] * float(180.0/3.141592654)
    # def poseCallback(self,odom):
    #     """Get the current position updated from the topic /husky1_pose"""
    #     self.pose[0] = odom.pose[13].position.x
    #     self.pose[1] = odom.pose[13].position.y
    #     quaternion = (odom.pose[13].orientation.x,odom.pose[13].orientation.y,odom.pose[13].orientation.z,odom.pose[13].orientation.w)
    #     robot_orientation = tf.transformations.euler_from_quaternion(quaternion)
    #     self.pose[2] = robot_orientation[2] * float(180.0/3.141592654)


    # def goalCallback(self,goal):
    #     """Update the desired position from the topic named /goal"""
    #     self.target_pose[0] = goal.pose.position.x
    #     self.target_pose[1] = goal.pose.position.y

   
    def get_state(self,goal):
        """Get the state which will be fed into the HILPS agent for generating an action to control the husky."""
        x = self.pose[0] - goal[0]
        y = self.pose[1] - goal[1]
        related_pose = np.array([x,y])
        dis = np.linalg.norm(related_pose)

        
        targetAngle = 0.0 
        if( (related_pose[0] > 0) and (related_pose[1] > 0)):
            posAngle = np.arctan(related_pose[1] / related_pose[0])
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = -180.0 + posAngle_degress 
        elif( (related_pose[0] < 0) and (related_pose[1] > 0)):
            posAngle = np.arctan(related_pose[1] / (-1.0*related_pose[0]))
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = -(posAngle_degress)
        elif( (related_pose[0] < 0) and (related_pose[1] < 0)):
            posAngle = np.arctan((-1.0*related_pose[1]) / (-1.0*related_pose[0]))
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = posAngle_degress
        elif( (related_pose[0] > 0) and (related_pose[1] < 0)):
            posAngle = np.arctan((-1.0*related_pose[1]) / related_pose[0])
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = 180.0 - posAngle_degress

        targetAngleDiff = targetAngle - self.pose[2]
        if(targetAngleDiff > 180.0):
            targetAngleDiff -= 360.0
        if(targetAngleDiff < -180.0):
            targetAngleDiff += 360.0

        targetAngleDiffRadians = targetAngleDiff * float(3.141592654 / 180.0)
        lidar = None
        while lidar is None:
            try:
                lidar = rospy.wait_for_message('/scan', LaserScan)  # data from Lidar
            except:
                print "fail to get data from lidar"
        lidar, done = self.discretize_observation(lidar, 10)
        get_goal = 1 if self.get_counter > 0 else 0
        state = np.concatenate((lidar,dis,targetAngleDiffRadians,get_goal),axis=None)

        return state,dis,done


    def get_reward(self,dis,done):
        """The function is aiming to provide the reward signal based on the dis info to the agent."""
        threshold = 1 
        reward = -0.1 * (dis - self.prev_dist) - 0.001
        self.prev_dist = dis
        t = False

        if dis < 0.7:
            reward += 1 
            self.get_counter += 1 
            print("reach target")
            t = True
            if self.get_counter > threshold:
                reward += 2
                #t = True
                self.get_counter = 0
                print("Reach target Completedly!")
        else:
            self.get_counter = 0
        
        if done: reward = -1
        # threshold = 1
        # t = False
        # if done: 
        #     reward = -1 
        # elif dis < 0.7: 
        #     reward += 1 
        #     self.get_counter += 1
        #     print("reach target")
        #     t = True
        #     if self.get_counter > threshold:
        #         reward += 10
        #         self.get_counter = 0
        #         print("Reach target completely!")
        # else:
        #     reward = -0.1 * (dis - self.prev_dist)
        #     self.prev_dist = 
    

        return reward,done,t

    def step(self,action,goal):
        """The env will process the action and goal and generate the corresponding state and reward to the agent."""
        # try:
        #     self.unpause()
        # except (rospy.ServiceException) as e:
        #     print ("/gazebo/unpause_physics service call failed")
        vel_cmd = Twist()
        vel_cmd.linear.x = action[0]
        vel_cmd.angular.z = action[1]

        
        self.vel_pub.publish(vel_cmd)
        
        state,dis,done = self.get_state(goal)
        reward,done,success = self.get_reward(dis,done)
        # try:
        #     #resp_pause = pause.call()
        #     self.pause()
        # except (rospy.ServiceException) as e:
        #     print ("/gazebo/pause_physics service call failed")


        return state,reward,done,success    
    
    # def target_vis(self, goal):
    #     """Visualize the target position in the simulation env."""
    #     rospy.wait_for_service("gazebo/delete_model")
    #     rospy.wait_for_service("gazebo/spawn_sdf_model")
    #     delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)

    #     s = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)

    #     #orient = Quaternion(*tf.transformations.quaternion_from_euler(1.571, 0, 0))
    #     orient = Quaternion(*tf.transformations.quaternion_from_euler(0, 0, 0))
    #     origin_pose = Pose(Point(goal[0],goal[1],0), orient)

    #     # with open('/home/yuecideng/vis_target/reel_simple.sdf',"r") as f:
    #     #     reel_xml = f.read()

    #     with open('/home/lukewen/UGV_navigation_RL/vis_target/model2.sdf',"r") as f:
    #         target_xml = f.read()b

    #     #for row in [2,4,5]:
    #     #  for	col in xrange(0,1):
       
    #     #reel_name = "reel_%d_%d" % (row,col)
    #     target_name = "Target2"
    #     try:
    #         delete_model(target_name)
    #     except:
    #         pass
    #     pose = deepcopy(origin_pose)
    #     pose.position.x = origin_pose.position.x #- 3.5 * unit + col * unit
    #     pose.position.y = origin_pose.position.y #- 3.5 * unit + row * unit
    #     pose.position.z = origin_pose.position.z
    #     s(target_name, target_xml, "", pose, "world")
        
    def retarget(self,goal):
        """Before the retarget function works, the new self.target should be initialized."""
        # rospy.wait_for_service('/gazebo/unpause_physics')
        # try:
        #     self.unpause()
        # except (rospy.ServiceException) as e:
        #     print ("/gazebo/unpause_physics service call failed")
        self.target_pose = goal
        action = np.array((0.0,0.0),dtype=np.float)
        state = self.get_state(self.target_pose)[0]
        # self.target_vis(self.target_pose)

        self.prev_dist = (np.linalg.norm([self.pose[0] - self.target_pose[0], self.pose[1] - self.target_pose[1]]))
        # self.target_vis(goal)
        # rospy.wait_for_service('/gazebo/pause_physics')
        # try:
        #     #resp_pause = pause.call()
        #     self.pause()
        # except (rospy.ServiceException) as e:
        #     print ("/gazebo/pause_physics service call failed")
        return state

    def get_joy_action(self):
        """"""
        joyAction = Twist()
        joyAction.linear.x = 0.0
        joyAction.angular.z = 0.0
        while (joyAction.linear.x == 0.0) and (joyAction.angular.z == 0.0):
            try:
                #joyAction = rospy.wait_for_message('/joy_teleop/cmd_vel', Twist)
                joyAction = rospy.wait_for_message('/joy_teleop/cmd_vel', Twist)
                #print('received joy action: ' + str(joyAction.linear.x) + '  ' + str(joyAction.angular.z))
            except:
                print "no joy action"

        action = np.array([joyAction.linear.x, joyAction.angular.z])
        action[0] = np.clip(action[0], 0.0,0.5)
        action[1] = np.clip(action[1],-0.5,0.5)

        return action

    def check_joy_action(self):
        joyAction = Twist()
        joyAction.linear.x = 0.0
        joyAction.angular.z = 0.0
        joyActionDetected = False
        received_action = np.array([0.0, 0.0])
        try:
            #joyAction = rospy.wait_for_message('/joy_teleop/cmd_vel', Twist)
            joyAction = rospy.wait_for_message('/joy_teleop/vel', Twist)
            #print('received joy action: ' + str(joyAction.linear.x) + '  ' + str(joyAction.angular.z))
        except:
            joyActionDetected = False
            print "no joy action"

        if(joyAction.linear.x == 0.0) and (joyAction.angular.z == 0.0):
            joyActionDetected = False
        else:
            joyActionDetected = True
            received_action[0] = joyAction.linear.x
            received_action[1] = joyAction.angular.z
            received_action[0] = np.clip(received_action[0], 0.0,0.5)
            received_action[1] = np.clip(received_action[1],-0.5,0.5)

        return joyActionDetected, received_action
