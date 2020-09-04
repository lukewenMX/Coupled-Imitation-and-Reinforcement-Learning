;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::GetSurfaceFrontierRepresentatives)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'GetSurfaceFrontierRepresentatives (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVES")
  (make-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVES"))
(unless (find-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVESREQUEST")
  (make-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVESREQUEST"))
(unless (find-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVESRESPONSE")
  (make-package "EXPLORATION3D_MSGS::GETSURFACEFRONTIERREPRESENTATIVESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest
  :super ros::object
  :slots (_base_pose ))

(defmethod exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest
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

(defclass exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse
  :super ros::object
  :slots (_frontiers ))

(defmethod exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse
  (:init
   (&key
    ((:frontiers __frontiers) (let (r) (dotimes (i 0) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
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
    ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; exploration3d_msgs/SurfaceFrontierRepresentative[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance exploration3d_msgs::SurfaceFrontierRepresentative :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass exploration3d_msgs::GetSurfaceFrontierRepresentatives
  :super ros::object
  :slots ())

(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentatives :md5sum-) "ceb941e9622ea77681232187bc67de45")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentatives :datatype-) "exploration3d_msgs/GetSurfaceFrontierRepresentatives")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentatives :request) exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest)
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentatives :response) exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse)

(defmethod exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest
  (:response () (instance exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse :init)))

(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest :md5sum-) "ceb941e9622ea77681232187bc67de45")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest :datatype-) "exploration3d_msgs/GetSurfaceFrontierRepresentativesRequest")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesRequest :definition-)
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
SurfaceFrontierRepresentative[] frontiers

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

(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse :md5sum-) "ceb941e9622ea77681232187bc67de45")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse :datatype-) "exploration3d_msgs/GetSurfaceFrontierRepresentativesResponse")
(setf (get exploration3d_msgs::GetSurfaceFrontierRepresentativesResponse :definition-)
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
SurfaceFrontierRepresentative[] frontiers

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



(provide :exploration3d_msgs/GetSurfaceFrontierRepresentatives "ceb941e9622ea77681232187bc67de45")


