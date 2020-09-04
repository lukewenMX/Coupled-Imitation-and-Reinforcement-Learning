;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::ExplorationTaskUpdate)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'ExplorationTaskUpdate (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::EXPLORATIONTASKUPDATE")
  (make-package "EXPLORATION3D_MSGS::EXPLORATIONTASKUPDATE"))

(in-package "ROS")
;;//! \htmlinclude ExplorationTaskUpdate.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass exploration3d_msgs::ExplorationTaskUpdate
  :super ros::object
  :slots (_robot_id _task_id _success _visited_poses ))

(defmethod exploration3d_msgs::ExplorationTaskUpdate
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:task_id __task_id) 0)
    ((:success __success) nil)
    ((:visited_poses __visited_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _task_id (round __task_id))
   (setq _success __success)
   (setq _visited_poses __visited_poses)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:visited_poses
   (&rest __visited_poses)
   (if (keywordp (car __visited_poses))
       (send* _visited_poses __visited_poses)
     (progn
       (if __visited_poses (setq _visited_poses (car __visited_poses)))
       _visited_poses)))
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; uint16 _task_id
    2
    ;; bool _success
    1
    ;; geometry_msgs/Pose[] _visited_poses
    (apply #'+ (send-all _visited_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; uint16 _task_id
       (write-word _task_id s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose[] _visited_poses
     (write-long (length _visited_poses) s)
     (dolist (elem _visited_poses)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose[] _visited_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _visited_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _visited_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration3d_msgs::ExplorationTaskUpdate :md5sum-) "ee97353beddf617331562d4c082cdaad")
(setf (get exploration3d_msgs::ExplorationTaskUpdate :datatype-) "exploration3d_msgs/ExplorationTaskUpdate")
(setf (get exploration3d_msgs::ExplorationTaskUpdate :definition-)
      "# The ID of the robot to which this exploration task update belongs to
string robot_id
# The sequence ID of the exploration task
uint16 task_id
# Has the exploration task being successfully completed
bool success
# If unsuccesful, what was the sequence of view poses the robot successfully visited
geometry_msgs/Pose[] visited_poses

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



(provide :exploration3d_msgs/ExplorationTaskUpdate "ee97353beddf617331562d4c082cdaad")


