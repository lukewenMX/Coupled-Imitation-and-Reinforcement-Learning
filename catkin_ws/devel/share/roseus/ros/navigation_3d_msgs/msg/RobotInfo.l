;; Auto-generated. Do not edit!


(when (boundp 'navigation_3d_msgs::RobotInfo)
  (if (not (find-package "NAVIGATION_3D_MSGS"))
    (make-package "NAVIGATION_3D_MSGS"))
  (shadow 'RobotInfo (find-package "NAVIGATION_3D_MSGS")))
(unless (find-package "NAVIGATION_3D_MSGS::ROBOTINFO")
  (make-package "NAVIGATION_3D_MSGS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html


(defclass navigation_3d_msgs::RobotInfo
  :super ros::object
  :slots (_robot_name _robot_ip ))

(defmethod navigation_3d_msgs::RobotInfo
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_ip __robot_ip) "")
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_ip (string __robot_ip))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_ip
   (&optional __robot_ip)
   (if __robot_ip (setq _robot_ip __robot_ip)) _robot_ip)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _robot_ip
    4 (length _robot_ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _robot_ip
       (write-long (length _robot_ip) s) (princ _robot_ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get navigation_3d_msgs::RobotInfo :md5sum-) "dbc88eba51f8efa42fd2b49c8ec3a91b")
(setf (get navigation_3d_msgs::RobotInfo :datatype-) "navigation_3d_msgs/RobotInfo")
(setf (get navigation_3d_msgs::RobotInfo :definition-)
      "# The name of the robot
string robot_name
# The ip of the robot
string robot_ip
")



(provide :navigation_3d_msgs/RobotInfo "dbc88eba51f8efa42fd2b49c8ec3a91b")


