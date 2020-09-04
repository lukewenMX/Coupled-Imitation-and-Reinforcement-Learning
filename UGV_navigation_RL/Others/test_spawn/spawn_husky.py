import numpy as np
import torch
import time
import argparse
import os
import signal
import roslaunch
import math
import rospy
import time
import numpy as np
import rospy
import tf
from tf.transformations import quaternion_from_euler, euler_from_quaternion
from gym import utils, spaces
from geometry_msgs.msg import Twist
from gazebo_msgs.msg import LinkStates
from std_srvs.srv import Empty
from move_base_msgs.msg import MoveBaseActionGoal
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Float64MultiArray
from copy import deepcopy
from gazebo_msgs.srv import *
from geometry_msgs.msg import *
import subprocess

if __name__ == '__main__':
    # rospy.wait_for_service("gazebo/spawn_sdf_model")
    # s = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)
    # orient = Quaternion(*tf.transformations.quaternion_from_euler(0, 0, 0))
    # origin_pose = Pose(Point(2,2,0), orient)
    #
    # with open('/home/lee/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/turtlebot/turtlebot_description/robots/husky_hokuyo.urdf.xacro',"r") as f:
    #     target_xml = f.read()
    #
    # target_name = "/"
    # pose = deepcopy(origin_pose)
    # pose.position.x = origin_pose.position.x
    # pose.position.y = origin_pose.position.y
    # pose.position.z = origin_pose.position.z
    # s(target_name, target_xml, "", pose, "world")


    # port = '11311'
    # fullpath = '/home/lee/gym_gazebo/gym_gazebo/envs/assets/launch/RespawnHusky.launch'
    # x = 2
    # y = 2
    # args_x = 'x:="2"'
    # args_y = 'y:="2"'
    # spawn_husky = subprocess.Popen(["roslaunch","-p", port, fullpath, args_x, args_y])
    # poll = spawn_husky.poll()
    # while(poll != None):
    #     poll = spawn_husky.poll()

    #rospy.wait_for_service("gazebo/spawn_sdf_model")

    #os.killpg(os.getpgid(spawn_husky.pid), signal.SIGTERM)

    spawn = rospy.ServiceProxy("gazebo/spawn_urdf_model", SpawnModel)

    #['model_name', 'model_xml', 'robot_namespace', 'initial_pose', 'reference_frame']
    path = '/home/lee/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/turtlebot/turtlebot_description/robots/husky_hokuyo.urdf.xacro'

    quaternion = quaternion_from_euler(0, 0, 0)
    pose = Pose()
    pose.position.x = float(2)
    pose.position.y = float(2)
    pose.position.z = float(0)
    pose.orientation.x = quaternion[0]
    pose.orientation.y = quaternion[1]
    pose.orientation.z = quaternion[2]
    pose.orientation.w = quaternion[3]

    p = os.popen("rosrun xacro xacro.py " + path)
    xml_string = p.read()
    p.close()

    req = SpawnModelRequest()
    req.model_name = '/'
    req.model_xml = xml_string
    req.initial_pose = pose

    spawn(req)

    print('done')
