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

# GOAL_1 = [-7.8, 7.8]
# GOAL_2 = [ 7.8, 7.8]
# GOAL_3 = [ 7.8,-7.8]
# GOAL_4 = [-7.8,-7.8]

# GOAL_1 = [-25.0, 25.0]
# GOAL_2 = [ 12.0, 12.0]
# GOAL_3 = [ 17.0,-17.0]
# GOAL_4 = [-20.0,-20.0]

GOAL_1 = [7.8, 7.8]

class Husky(object):
    get_counter = 0

    def __init__(self, goal=GOAL_1):
        # Launch the simulation with the given launchfile name

        rospy.init_node('husky_gazebo')
        self.vel_pub = rospy.Publisher('/RLEnv/cmd_vel',Twist,queue_size=5)
        self.unpause = rospy.ServiceProxy('/gazebo/unpause_physics', Empty)
        self.pause = rospy.ServiceProxy('/gazebo/pause_physics', Empty)
        self.reset_proxy = rospy.ServiceProxy('/gazebo/reset_world', Empty,)
        rospy.Subscriber('/gazebo/link_states', LinkStates, self.get_odom,queue_size=5)
        self.goal_count = 1
        self.target_pos = np.array(goal)
        self.pos = [0, 0]
        self.state_dim = 13 #17 #16
        self.action_dim = 2
        self.prev_dist = (np.linalg.norm([0.0 - self.target_pos[0], 0.0 - self.target_pos[1]]))
        self.base_link_index = 9 #9 #13

    def get_odom(self, data):
        self.pos[0] = data.pose[self.base_link_index].position.x
        self.pos[1] = data.pose[self.base_link_index].position.y

    def step(self, action):

        rospy.wait_for_service('/gazebo/unpause_physics')
        try:
            self.unpause()
        except (rospy.ServiceException) as e:
            print ("/gazebo/unpause_physics service call failed")

        vel_cmd = Twist()
        vel_cmd.linear.x = action[0]
        vel_cmd.angular.z = action[1]

        time_current = rospy.get_time()
        while (rospy.get_time() - time_current) < 0.5:
            self.vel_pub.publish(vel_cmd)

        state, dis, done = self.get_state(action)
        reward, done = self.get_reward(dis,done,action)

        rospy.wait_for_service('/gazebo/pause_physics')
        try:
            #resp_pause = pause.call()
            self.pause()
        except (rospy.ServiceException) as e:
            print ("/gazebo/pause_physics service call failed")

        return state, reward, done

    def reset(self):
        # Resets the state of the environment and returns an initial observation.
        rospy.wait_for_service('/gazebo/reset_world')
        try:
            #reset_proxy.call()
            self.reset_proxy()
        except (rospy.ServiceException) as e:
            print ("/gazebo/reset_simulation service call failed")
        rospy.wait_for_service('/gazebo/unpause_physics')
        try:
            self.unpause()
        except (rospy.ServiceException) as e:
            print ("/gazebo/unpause_physics service call failed")

        action = np.array((0.0, 0.0), dtype=np.float)
        #print(action)

        state = self.get_state(action)[0]
        #self.target_generate()
        self.target_vis(self.target_pos)

        pose = None
        while pose is None:
            try:
                pose = rospy.wait_for_message('/gazebo/link_states', LinkStates)  # data from Lidar
            except:
                print "fail to get position data from gazebo"

        #print(str(pose.pose[13].position.x) + '   ' + str(pose.pose[13].position.y))
        self.prev_dist = (np.linalg.norm([pose.pose[self.base_link_index].position.x - self.target_pos[0], pose.pose[self.base_link_index].position.y - self.target_pos[1]]))
        #print('prev_dist :' + str(self.prev_dist))

        rospy.wait_for_service('/gazebo/pause_physics')
        try:
            #resp_pause = pause.call()
            self.pause()
        except (rospy.ServiceException) as e:
            print ("/gazebo/pause_physics service call failed")

        return state

    def discretize_observation(self, data, new_ranges):
        discretized_ranges = [] # initialize output states
        min_range = 0.3
        done = False
        mod = len(data.ranges)/new_ranges
        for i, item in enumerate(data.ranges):
            if (i%mod==0):
                if data.ranges[i] == float ('Inf') or np.isinf(data.ranges[i]):
                    discretized_ranges.append(10.0)
                else:
                    discretized_ranges.append(data.ranges[i])
            if (min_range > data.ranges[i] > 0):
                done = True
        discretized_ranges = np.array(discretized_ranges)

        return discretized_ranges, done

    def get_state(self,action):

        #get pos data
        pose = None
        while pose is None:
            try:
                pose = rospy.wait_for_message('/gazebo/link_states', LinkStates)  # data from Lidar
            except:
                print "fail to get position data from gazebo"

        #get lidar data
        lidar = None
        while lidar is None:
            try:
                lidar = rospy.wait_for_message('/scan', LaserScan)  # data from Lidar
            except:
                print "fail to get data from lidar"

        #print('pos x: ' + str(pose.pose[self.base_link_index].position.x) + '  pos y: ' + str(pose.pose[self.base_link_index].position.y))

        x = pose.pose[self.base_link_index].position.x - self.target_pos[0]
        y = pose.pose[self.base_link_index].position.y - self.target_pos[1]

        related_pos = np.array([x,y])
        dis = np.linalg.norm(related_pos)

        #print('related_pos x: ' + str(related_pos[0]) + '  related_pos y: ' + str(related_pos[1]))

        #robot orientation with respect to world frame
        quaternion = (pose.pose[self.base_link_index].orientation.x,
                      pose.pose[self.base_link_index].orientation.y,
                      pose.pose[self.base_link_index].orientation.z,
                      pose.pose[self.base_link_index].orientation.w)
        robot_orientation = tf.transformations.euler_from_quaternion(quaternion)
        robotAngle = robot_orientation[2] * float(180.0 / 3.141592654)
        #print('robotAngle: ' + str(robotAngle))

        #target orientation with respect to world frame
        targetAngle = 0.0

        if( (related_pos[0] > 0) and (related_pos[1] > 0)):
            posAngle = np.arctan(related_pos[1] / related_pos[0])
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = -180.0 + posAngle_degress
        elif( (related_pos[0] < 0) and (related_pos[1] > 0)):
            posAngle = np.arctan(related_pos[1] / (-1.0*related_pos[0]))
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = -(posAngle_degress)
        elif( (related_pos[0] < 0) and (related_pos[1] < 0)):
            posAngle = np.arctan((-1.0*related_pos[1]) / (-1.0*related_pos[0]))
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = posAngle_degress
        elif( (related_pos[0] > 0) and (related_pos[1] < 0)):
            posAngle = np.arctan((-1.0*related_pos[1]) / related_pos[0])
            posAngle_degress = (posAngle * float(180.0 / 3.141592654))
            targetAngle = 180.0 - posAngle_degress

        #print('targetAngle: ' + str(targetAngle))

        #diff from target to robot angle
        targetAngleDiff = targetAngle - robotAngle
        if(targetAngleDiff > 180.0):
            targetAngleDiff -= 360.0
        if(targetAngleDiff < -180.0):
            targetAngleDiff += 360.0

        targetAngleDiffRadians = targetAngleDiff * float(3.141592654 / 180.0)

        #print('targetAngleDiff: ' + str(targetAngleDiff))

        get_goal = 1 if self.get_counter > 0 else 0
        #if(get_goal == 1):
            #print('get_goal == 1')
        #discrete lidar data into 10 beams
        lidar, done = self.discretize_observation(lidar, 10)
        #state = np.concatenate((lidar,related_pos,dis,targetAngleDiff,action,get_goal), axis=None)
        state = np.concatenate((lidar,dis,targetAngleDiffRadians,get_goal), axis=None)


        return state, dis, done

    def get_reward(self,dis,done,action):
        threshod = 1
        #reward = -0.01 * dis - 0.01 * np.linalg.norm(action)
        #reward = -0.1 * dis
        reward = -0.1 * (dis - self.prev_dist)
        self.prev_dist = dis
        t = False

        if dis < 0.7:
            reward += 1
            self.get_counter += 1
            print 'reach target'
            if self.get_counter > threshod:
                reward += 10
                t = True
                self.get_counter = 0
                print 'reach target completedly'
        else:
            self.get_counter = 0

        if done:
            reward = -1

        done = done or t

        return reward, done

    def target_vis(self, goal):
        rospy.wait_for_service("gazebo/delete_model")
        rospy.wait_for_service("gazebo/spawn_sdf_model")
        delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)

        s = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)

        orient = Quaternion(*tf.transformations.quaternion_from_euler(0, 0, 0))
        origin_pose = Pose(Point(goal[0],goal[1],0), orient)

        with open('/home/lee/UGV_navigation_RL_2/vis_target/model.sdf',"r") as f:
            target_xml = f.read()

        target_name = "Target"
        delete_model(target_name)
        pose = deepcopy(origin_pose)
        pose.position.x = origin_pose.position.x
        pose.position.y = origin_pose.position.y
        pose.position.z = origin_pose.position.z
        s(target_name, target_xml, "", pose, "world")

    def target_generate(self):
        if(self.goal_count == 1):
            self.target_pos = GOAL_1
        elif(self.goal_count == 2):
            self.target_pos = GOAL_2
        elif(self.goal_count == 3):
            self.target_pos = GOAL_3
        elif(self.goal_count == 4):
            self.target_pos = GOAL_4

        self.goal_count += 1

        if(self.goal_count > 4):
            self.goal_count = 1

    def get_joy_action(self):
        joyAction = Twist()
        joyAction.linear.x = 0.0
        joyAction.angular.z = 0.0
        while (joyAction.linear.x == 0.0) and (joyAction.angular.z == 0.0):
            try:
                #joyAction = rospy.wait_for_message('/joy_teleop/cmd_vel', Twist)
                joyAction = rospy.wait_for_message('/joy_teleop/vel', Twist)
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
