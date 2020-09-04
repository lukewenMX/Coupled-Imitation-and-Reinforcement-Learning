; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-srv)


;//! \htmlinclude GetSurfaceFrontierUpdates-request.msg.html

(cl:defclass <GetSurfaceFrontierUpdates-request> (roslisp-msg-protocol:ros-message)
  ((base_pose
    :reader base_pose
    :initarg :base_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetSurfaceFrontierUpdates-request (<GetSurfaceFrontierUpdates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSurfaceFrontierUpdates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSurfaceFrontierUpdates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetSurfaceFrontierUpdates-request> is deprecated: use exploration3d_msgs-srv:GetSurfaceFrontierUpdates-request instead.")))

(cl:ensure-generic-function 'base_pose-val :lambda-list '(m))
(cl:defmethod base_pose-val ((m <GetSurfaceFrontierUpdates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:base_pose-val is deprecated.  Use exploration3d_msgs-srv:base_pose instead.")
  (base_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSurfaceFrontierUpdates-request>) ostream)
  "Serializes a message object of type '<GetSurfaceFrontierUpdates-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSurfaceFrontierUpdates-request>) istream)
  "Deserializes a message object of type '<GetSurfaceFrontierUpdates-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSurfaceFrontierUpdates-request>)))
  "Returns string type for a service object of type '<GetSurfaceFrontierUpdates-request>"
  "exploration3d_msgs/GetSurfaceFrontierUpdatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierUpdates-request)))
  "Returns string type for a service object of type 'GetSurfaceFrontierUpdates-request"
  "exploration3d_msgs/GetSurfaceFrontierUpdatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSurfaceFrontierUpdates-request>)))
  "Returns md5sum for a message object of type '<GetSurfaceFrontierUpdates-request>"
  "2d45db01356448270de7d3f64bbb4d6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSurfaceFrontierUpdates-request)))
  "Returns md5sum for a message object of type 'GetSurfaceFrontierUpdates-request"
  "2d45db01356448270de7d3f64bbb4d6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSurfaceFrontierUpdates-request>)))
  "Returns full string definition for message of type '<GetSurfaceFrontierUpdates-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSurfaceFrontierUpdates-request)))
  "Returns full string definition for message of type 'GetSurfaceFrontierUpdates-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSurfaceFrontierUpdates-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSurfaceFrontierUpdates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSurfaceFrontierUpdates-request
    (cl:cons ':base_pose (base_pose msg))
))
;//! \htmlinclude GetSurfaceFrontierUpdates-response.msg.html

(cl:defclass <GetSurfaceFrontierUpdates-response> (roslisp-msg-protocol:ros-message)
  ((updates
    :reader updates
    :initarg :updates
    :type exploration3d_msgs-msg:SurfaceFrontierUpdates
    :initform (cl:make-instance 'exploration3d_msgs-msg:SurfaceFrontierUpdates)))
)

(cl:defclass GetSurfaceFrontierUpdates-response (<GetSurfaceFrontierUpdates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSurfaceFrontierUpdates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSurfaceFrontierUpdates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetSurfaceFrontierUpdates-response> is deprecated: use exploration3d_msgs-srv:GetSurfaceFrontierUpdates-response instead.")))

(cl:ensure-generic-function 'updates-val :lambda-list '(m))
(cl:defmethod updates-val ((m <GetSurfaceFrontierUpdates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:updates-val is deprecated.  Use exploration3d_msgs-srv:updates instead.")
  (updates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSurfaceFrontierUpdates-response>) ostream)
  "Serializes a message object of type '<GetSurfaceFrontierUpdates-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'updates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSurfaceFrontierUpdates-response>) istream)
  "Deserializes a message object of type '<GetSurfaceFrontierUpdates-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'updates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSurfaceFrontierUpdates-response>)))
  "Returns string type for a service object of type '<GetSurfaceFrontierUpdates-response>"
  "exploration3d_msgs/GetSurfaceFrontierUpdatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierUpdates-response)))
  "Returns string type for a service object of type 'GetSurfaceFrontierUpdates-response"
  "exploration3d_msgs/GetSurfaceFrontierUpdatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSurfaceFrontierUpdates-response>)))
  "Returns md5sum for a message object of type '<GetSurfaceFrontierUpdates-response>"
  "2d45db01356448270de7d3f64bbb4d6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSurfaceFrontierUpdates-response)))
  "Returns md5sum for a message object of type 'GetSurfaceFrontierUpdates-response"
  "2d45db01356448270de7d3f64bbb4d6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSurfaceFrontierUpdates-response>)))
  "Returns full string definition for message of type '<GetSurfaceFrontierUpdates-response>"
  (cl:format cl:nil "SurfaceFrontierUpdates updates~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierUpdates~%std_msgs/Header header~%exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers~%exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSurfaceFrontierUpdates-response)))
  "Returns full string definition for message of type 'GetSurfaceFrontierUpdates-response"
  (cl:format cl:nil "SurfaceFrontierUpdates updates~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierUpdates~%std_msgs/Header header~%exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers~%exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration3d_msgs/SurfaceFrontierRepresentative~%# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSurfaceFrontierUpdates-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'updates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSurfaceFrontierUpdates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSurfaceFrontierUpdates-response
    (cl:cons ':updates (updates msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSurfaceFrontierUpdates)))
  'GetSurfaceFrontierUpdates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSurfaceFrontierUpdates)))
  'GetSurfaceFrontierUpdates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSurfaceFrontierUpdates)))
  "Returns string type for a service object of type '<GetSurfaceFrontierUpdates>"
  "exploration3d_msgs/GetSurfaceFrontierUpdates")