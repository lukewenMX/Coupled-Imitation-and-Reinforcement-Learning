;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::ExplorationTask)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'ExplorationTask (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::EXPLORATIONTASK")
  (make-package "EXPLORATION3D_MSGS::EXPLORATIONTASK"))

(in-package "ROS")
;;//! \htmlinclude ExplorationTask.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass exploration3d_msgs::ExplorationTask
  :super ros::object
  :slots (_robot_id _task_id _view_poses ))

(defmethod exploration3d_msgs::ExplorationTask
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:task_id __task_id) 0)
    ((:view_poses __view_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _task_id (round __task_id))
   (setq _view_poses __view_poses)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:view_poses
   (&rest __view_poses)
   (if (keywordp (car __view_poses))
       (send* _view_poses __view_poses)
     (progn
       (if __view_poses (setq _view_poses (car __view_poses)))
       _view_poses)))
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; uint16 _task_id
    2
    ;; geometry_msgs/Pose[] _view_poses
    (apply #'+ (send-all _view_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; uint16 _task_id
       (write-word _task_id s)
     ;; geometry_msgs/Pose[] _view_poses
     (write-long (length _view_poses) s)
     (dolist (elem _view_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _task_id
     (setq _task_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Pose[] _view_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _view_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _view_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration3d_msgs::ExplorationTask :md5sum-) "e440d5a3ac78a83fd60834904ff2e4b4")
(setf (get exploration3d_msgs::ExplorationTask :datatype-) "exploration3d_msgs/ExplorationTask")
(setf (get exploration3d_msgs::ExplorationTask :definition-)
      "# The ID of the robot to which this exploration task belongs
string robot_id
# The sequence ID of the exploration task
uint16 task_id
# The vector of view poses the robot is to visit as part of its exploration task
geometry_msgs/Pose[] view_poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :exploration3d_msgs/ExplorationTask "e440d5a3ac78a83fd60834904ff2e4b4")


