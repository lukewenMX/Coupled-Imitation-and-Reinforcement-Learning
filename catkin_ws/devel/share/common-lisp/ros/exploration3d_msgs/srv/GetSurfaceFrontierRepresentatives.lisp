; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-srv)


;//! \htmlinclude GetSurfaceFrontierRepresentatives-request.msg.html

(cl:defclass <GetSurfaceFrontierRepresentatives-request> (roslisp-msg-protocol:ros-message)
  ((base_pose
    :reader base_pose
    :initarg :base_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetSurfaceFrontierRepresentatives-request (<GetSurfaceFrontierRepresentatives-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSurfaceFrontierRepresentatives-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSurfaceFrontierRepresentatives-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetSurfaceFrontierRepresentatives-request> is deprecated: use exploration3d_msgs-srv:GetSurfaceFrontierRepresentatives-request instead.")))

(cl:ensure-generic-function 'base_pose-val :lambda-list '(m))
(cl:defmethod base_pose-val ((m <GetSurfaceFrontierRepresentatives-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:base_pose-val is deprecated.  Use exploration3d_msgs-srv:base_pose instead.")
  (base_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSurfaceFrontierRepresentatives-request>) ostream)
  "Serializes a message object of type '<GetSurfaceFrontierRepresentatives-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSurfaceFrontierRepresentatives-request>) istream)
  "Deserializes a message object of type '<GetSurfaceFrontierRepresentatives-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSurfaceFrontierRepresentatives-request>)))
  "Returns string type for a service object of type '<GetSurfaceFrontierRepresentatives-request>"
  "exploration3d_msgs/GetSurfaceFrontierRepresentativesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierRepresentatives-request)))
  "Returns string type for a service object of type 'GetSurfaceFrontierRepresentatives-request"
  "exploration3d_msgs/GetSurfaceFrontierRepresentativesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSurfaceFrontierRepresentatives-request>)))
  "Returns md5sum for a message object of type '<GetSurfaceFrontierRepresentatives-request>"
  "ceb941e9622ea77681232187bc67de45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSurfaceFrontierRepresentatives-request)))
  "Returns md5sum for a message object of type 'GetSurfaceFrontierRepresentatives-request"
  "ceb941e9622ea77681232187bc67de45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSurfaceFrontierRepresentatives-request>)))
  "Returns full string definition for message of type '<GetSurfaceFrontierRepresentatives-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSurfaceFrontierRepresentatives-request)))
  "Returns full string definition for message of type 'GetSurfaceFrontierRepresentatives-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSurfaceFrontierRepresentatives-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSurfaceFrontierRepresentatives-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSurfaceFrontierRepresentatives-request
    (cl:cons ':base_pose (base_pose msg))
))
;//! \htmlinclude GetSurfaceFrontierRepresentatives-response.msg.html

(cl:defclass <GetSurfaceFrontierRepresentatives-response> (roslisp-msg-protocol:ros-message)
  ((frontiers
    :reader frontiers
    :initarg :frontiers
    :type (cl:vector exploration3d_msgs-msg:SurfaceFrontierRepresentative)
   :initform (cl:make-array 0 :element-type 'exploration3d_msgs-msg:SurfaceFrontierRepresentative :initial-element (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative))))
)

(cl:defclass GetSurfaceFrontierRepresentatives-response (<GetSurfaceFrontierRepresentatives-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSurfaceFrontierRepresentatives-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSurfaceFrontierRepresentatives-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetSurfaceFrontierRepresentatives-response> is deprecated: use exploration3d_msgs-srv:GetSurfaceFrontierRepresentatives-response instead.")))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <GetSurfaceFrontierRepresentatives-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:frontiers-val is deprecated.  Use exploration3d_msgs-srv:frontiers instead.")
  (frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSurfaceFrontierRepresentatives-response>) ostream)
  "Serializes a message object of type '<GetSurfaceFrontierRepresentatives-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSurfaceFrontierRepresentatives-response>) istream)
  "Deserializes a message object of type '<GetSurfaceFrontierRepresentatives-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierRepresentative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSurfaceFrontierRepresentatives-response>)))
  "Returns string type for a service object of type '<GetSurfaceFrontierRepresentatives-response>"
  "exploration3d_msgs/GetSurfaceFrontierRepresentativesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierRepresentatives-response)))
  "Returns string type for a service object of type 'GetSurfaceFrontierRepresentatives-response"
  "exploration3d_msgs/GetSurfaceFrontierRepresentativesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSurfaceFrontierRepresentatives-response>)))
  "Returns md5sum for a message object of type '<GetSurfaceFrontierRepresentatives-response>"
  "ceb941e9622ea77681232187bc67de45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSurfaceFrontierRepresentatives-response)))
  "Returns md5sum for a message object of type 'GetSurfaceFrontierRepresentatives-response"
  "ceb941e9622ea77681232187bc67de45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSurfaceFrontierRepresentatives-response>)))
  "Returns full string definition for message of type '<GetSurfaceFrontierRepresentatives-response>"
  (cl:format cl:nil "SurfaceFrontierRepresentative[] frontiers~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSurfaceFrontierRepresentatives-response)))
  "Returns full string definition for message of type 'GetSurfaceFrontierRepresentatives-response"
  (cl:format cl:nil "SurfaceFrontierRepresentative[] frontiers~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSurfaceFrontierRepresentatives-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSurfaceFrontierRepresentatives-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSurfaceFrontierRepresentatives-response
    (cl:cons ':frontiers (frontiers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSurfaceFrontierRepresentatives)))
  'GetSurfaceFrontierRepresentatives-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSurfaceFrontierRepresentatives)))
  'GetSurfaceFrontierRepresentatives-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierRepresentatives)))
  "Returns string type for a service object of type '<GetSurfaceFrontierRepresentatives>"
  "exploration3d_msgs/GetSurfaceFrontierRepresentatives")