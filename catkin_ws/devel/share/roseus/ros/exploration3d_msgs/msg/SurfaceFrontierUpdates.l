;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::SurfaceFrontierUpdates)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'SurfaceFrontierUpdates (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::SURFACEFRONTIERUPDATES")
  (make-package "EXPLORATION3D_MSGS::SURFACEFRONTIERUPDATES"))

(in-package "ROS")
;;//! \htmlinclude SurfaceFrontierUpdates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exploration3d_msgs::SurfaceFrontierUpdates
  :super ros::object
  :slots (_header _new_surface_frontiers _deleted_surface_frontiers ))

(defmethod exploration3d_msgs::SurfaceFrontierUpdates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:new_surface_frontiers __new_surface_frontiers) (let (r) (dotimes (i 0) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
    ((:deleted_surface_frontiers __deleted_surface_frontiers) (let (r) (dotimes (i 0) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _new_surface_frontiers __new_surface_frontiers)
   (setq _deleted_surface_frontiers __deleted_surface_frontiers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:new_surface_frontiers
   (&rest __new_surface_frontiers)
   (if (keywordp (car __new_surface_frontiers))
       (send* _new_surface_frontiers __new_surface_frontiers)
     (progn
       (if __new_surface_frontiers (setq _new_surface_frontiers (car __new_surface_frontiers)))
       _new_surface_frontiers)))
  (:deleted_surface_frontiers
   (&rest __deleted_surface_frontiers)
   (if (keywordp (car __deleted_surface_frontiers))
       (send* _deleted_surface_frontiers __deleted_surface_frontiers)
     (progn
       (if __deleted_surface_frontiers (setq _deleted_surface_frontiers (car __deleted_surface_frontiers)))
       _deleted_surface_frontiers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _new_surface_frontiers
    (apply #'+ (send-all _new_surface_frontiers :serialization-length)) 4
    ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _deleted_surface_frontiers
    (apply #'+ (send-all _deleted_surface_frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _new_surface_frontiers
     (write-long (length _new_surface_frontiers) s)
     (dolist (elem _new_surface_frontiers)
       (send elem :serialize s)
       )
     ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _deleted_surface_frontiers
     (write-long (length _deleted_surface_frontiers) s)
     (dolist (elem _deleted_surface_frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _new_surface_frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_surface_frontiers (let (r) (dotimes (i n) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
     (dolist (elem- _new_surface_frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _deleted_surface_frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deleted_surface_frontiers (let (r) (dotimes (i n) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
     (dolist (elem- _deleted_surface_frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration3d_msgs::SurfaceFrontierUpdates :md5sum-) "226b1a5e18d595260af183ec7160bc68")
(setf (get exploration3d_msgs::SurfaceFrontierUpdates :datatype-) "exploration3d_msgs/SurfaceFrontierUpdates")
(setf (get exploration3d_msgs::SurfaceFrontierUpdates :definition-)
      "std_msgs/Header header
exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers
exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: exploration3d_msgs/SurfaceFrontierRepresentative
# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.

# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.

# the single 3D point representing a surface frontier
geometry_msgs/Point p
# the length of the frontier in meters
float32 length
# the length of the parent frontier contour in meters
float32 parent_length
# the corner points associated with the frontier representative
geometry_msgs/Point corner_1
geometry_msgs/Point corner_2
# the two corner points of the parent frontier contour containing the frontier
geometry_msgs/Point parent_corner_1
geometry_msgs/Point parent_corner_2
# surface trend vector
geometry_msgs/Point v
# tangent to the surface frontier contour at representative point p
geometry_msgs/Point f_grad
# surface normal at p oriented towards the reachable portion of the environment
geometry_msgs/Point n
# Coeffcient of the quadratic used to approximate surface trend curve
float64 a
# if the representative is from the surface the robot traversed
bool is_floor

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :exploration3d_msgs/SurfaceFrontierUpdates "226b1a5e18d595260af183ec7160bc68")


