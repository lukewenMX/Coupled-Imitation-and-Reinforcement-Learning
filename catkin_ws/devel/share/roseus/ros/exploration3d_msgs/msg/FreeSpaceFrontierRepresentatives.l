;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::FreeSpaceFrontierRepresentatives)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'FreeSpaceFrontierRepresentatives (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::FREESPACEFRONTIERREPRESENTATIVES")
  (make-package "EXPLORATION3D_MSGS::FREESPACEFRONTIERREPRESENTATIVES"))

(in-package "ROS")
;;//! \htmlinclude FreeSpaceFrontierRepresentatives.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exploration3d_msgs::FreeSpaceFrontierRepresentatives
  :super ros::object
  :slots (_header _frontiers ))

(defmethod exploration3d_msgs::FreeSpaceFrontierRepresentatives
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frontiers __frontiers) (let (r) (dotimes (i 0) (push (instance exploration3d_msgs::FreeSpaceFrontierRepresentative :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frontiers __frontiers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exploration3d_msgs/FreeSpaceFrontierRepresentative[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exploration3d_msgs/FreeSpaceFrontierRepresentative[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exploration3d_msgs/FreeSpaceFrontierRepresentative[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance exploration3d_msgs::FreeSpaceFrontierRepresentative :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentatives :md5sum-) "bc74daa8665957dca20e7eac4bdcbf22")
(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentatives :datatype-) "exploration3d_msgs/FreeSpaceFrontierRepresentatives")
(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentatives :definition-)
      "std_msgs/Header header
exploration3d_msgs/FreeSpaceFrontierRepresentative[] frontiers

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
MSG: exploration3d_msgs/FreeSpaceFrontierRepresentative
# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size 

# the centroid of the freespace frontier voxel cluster
geometry_msgs/Point p
# the normal to the freespace frontier voxel surface at centroid
geometry_msgs/Vector3 n
# number of voxels in the freespace frontier cluster
uint32 nvx

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :exploration3d_msgs/FreeSpaceFrontierRepresentatives "bc74daa8665957dca20e7eac4bdcbf22")


