import numpy as np
import torch
import time
import argparse
import os
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

if __name__ == '__main__':
    rospy.wait_for_service("gazebo/delete_model")
    rospy.wait_for_service("gazebo/spawn_sdf_model")
    delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)
    s = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)

    target_name = "/"
    delete_model(target_name)
