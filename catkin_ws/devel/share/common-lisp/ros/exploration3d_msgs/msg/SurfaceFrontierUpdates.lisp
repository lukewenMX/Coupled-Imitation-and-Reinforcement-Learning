; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-msg)


;//! \htmlinclude SurfaceFrontierUpdates.msg.html

(cl:defclass <SurfaceFrontierUpdates> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (new_surface_frontiers
    :reader new_surface_frontiers
    :initarg :new_surface_frontiers
    :type (cl:vector exploration3d_msgs-msg:SurfaceFrontierRepresentative)
   :initform (cl:make-array 0 :element-type 'exploration3d_msgs-msg:SurfaceFrontierRepresentative :initial-element (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative)))
   (deleted_surface_frontiers
    :reader deleted_surface_frontiers
    :initarg :deleted_surface_frontiers
    :type (cl:vector exploration3d_msgs-msg:SurfaceFrontierRepresentative)
   :initform (cl:make-array 0 :element-type 'exploration3d_msgs-msg:SurfaceFrontierRepresentative :initial-element (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative))))
)

(cl:defclass SurfaceFrontierUpdates (<SurfaceFrontierUpdates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurfaceFrontierUpdates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurfaceFrontierUpdates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-msg:<SurfaceFrontierUpdates> is deprecated: use exploration3d_msgs-msg:SurfaceFrontierUpdates instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SurfaceFrontierUpdates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:header-val is deprecated.  Use exploration3d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'new_surface_frontiers-val :lambda-list '(m))
(cl:defmethod new_surface_frontiers-val ((m <SurfaceFrontierUpdates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:new_surface_frontiers-val is deprecated.  Use exploration3d_msgs-msg:new_surface_frontiers instead.")
  (new_surface_frontiers m))

(cl:ensure-generic-function 'deleted_surface_frontiers-val :lambda-list '(m))
(cl:defmethod deleted_surface_frontiers-val ((m <SurfaceFrontierUpdates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:deleted_surface_frontiers-val is deprecated.  Use exploration3d_msgs-msg:deleted_surface_frontiers instead.")
  (deleted_surface_frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurfaceFrontierUpdates>) ostream)
  "Serializes a message object of type '<SurfaceFrontierUpdates>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_surface_frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'new_surface_frontiers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'deleted_surface_frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'deleted_surface_frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurfaceFrontierUpdates>) istream)
  "Deserializes a message object of type '<SurfaceFrontierUpdates>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_surface_frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_surface_frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'deleted_surface_frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'deleted_surface_frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurfaceFrontierUpdates>)))
  "Returns string type for a message object of type '<SurfaceFrontierUpdates>"
  "exploration3d_msgs/SurfaceFrontierUpdates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurfaceFrontierUpdates)))
  "Returns string type for a message object of type 'SurfaceFrontierUpdates"
  "exploration3d_msgs/SurfaceFrontierUpdates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurfaceFrontierUpdates>)))
  "Returns md5sum for a message object of type '<SurfaceFrontierUpdates>"
  "226b1a5e18d595260af183ec7160bc68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurfaceFrontierUpdates)))
  "Returns md5sum for a message object of type 'SurfaceFrontierUpdates"
  "226b1a5e18d595260af183ec7160bc68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurfaceFrontierUpdates>)))
  "Returns full string definition for message of type '<SurfaceFrontierUpdates>"
  (cl:format cl:nil "std_msgs/Header header~%exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers~%exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurfaceFrontierUpdates)))
  "Returns full string definition for message of type 'SurfaceFrontierUpdates"
  (cl:format cl:nil "std_msgs/Header header~%exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers~%exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurfaceFrontierUpdates>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_surface_frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'deleted_surface_frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurfaceFrontierUpdates>))
  "Converts a ROS message object to a list"
  (cl:list 'SurfaceFrontierUpdates
    (cl:cons ':header (header msg))
    (cl:cons ':new_surface_frontiers (new_surface_frontiers msg))
    (cl:cons ':deleted_surface_frontiers (deleted_surface_frontiers msg))
))
