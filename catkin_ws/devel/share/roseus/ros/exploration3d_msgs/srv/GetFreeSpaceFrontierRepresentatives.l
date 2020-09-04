;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::GetFreeSpaceFrontierRepresentatives)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'GetFreeSpaceFrontierRepresentatives (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVES")
  (make-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVES"))
(unless (find-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVESREQUEST")
  (make-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVESREQUEST"))
(unless (find-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVESRESPONSE")
  (make-package "EXPLORATION3D_MSGS::GETFREESPACEFRONTIERREPRESENTATIVESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest
  :super ros::object
  :slots (_base_pose ))

(defmethod exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest
  (:init
   (&key
    ((:base_pose __base_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _base_pose __base_pose)
   self)
  (:base_pose
   (&rest __base_pose)
   (if (keywordp (car __base_pose))
       (send* _base_pose __base_pose)
     (progn
       (if __base_pose (setq _base_pose (car __base_pose)))
       _base_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _base_pose
    (send _base_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _base_pose
       (send _base_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _base_pose
     (send _base_pose :deserialize buf ptr-) (incf ptr- (send _base_pose :serialization-length))
   ;;
   self)
  )

(defclass exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse
  :super ros::object
  :slots (_frontiers ))

(defmethod exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse
  (:init
   (&key
    ((:frontiers __frontiers) (let (r) (dotimes (i 0) (push (instance exploration3d_msgs::FreeSpaceFrontierRepresentative :init) r)) r))
    )
   (send-super :init)
   (setq _frontiers __frontiers)
   self)
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
    ;; exploration3d_msgs/FreeSpaceFrontierRepresentative[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; exploration3d_msgs/FreeSpaceFrontierRepresentative[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass exploration3d_msgs::GetFreeSpaceFrontierRepresentatives
  :super ros::object
  :slots ())

(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentatives :md5sum-) "42bad0289ab9e4d55cd64632c44f3f09")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentatives :datatype-) "exploration3d_msgs/GetFreeSpaceFrontierRepresentatives")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentatives :request) exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest)
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentatives :response) exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse)

(defmethod exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest
  (:response () (instance exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse :init)))

(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest :md5sum-) "42bad0289ab9e4d55cd64632c44f3f09")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest :datatype-) "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesRequest")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesRequest :definition-)
      "geometry_msgs/PoseStamped base_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
FreeSpaceFrontierRepresentative[] frontiers

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
")

(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse :md5sum-) "42bad0289ab9e4d55cd64632c44f3f09")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse :datatype-) "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesResponse")
(setf (get exploration3d_msgs::GetFreeSpaceFrontierRepresentativesResponse :definition-)
      "geometry_msgs/PoseStamped base_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
FreeSpaceFrontierRepresentative[] frontiers

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
")



(provide :exploration3d_msgs/GetFreeSpaceFrontierRepresentatives "42bad0289ab9e4d55cd64632c44f3f09")


