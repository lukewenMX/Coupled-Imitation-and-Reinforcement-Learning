; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-srv)


;//! \htmlinclude GetFreeSpaceFrontierRepresentatives-request.msg.html

(cl:defclass <GetFreeSpaceFrontierRepresentatives-request> (roslisp-msg-protocol:ros-message)
  ((base_pose
    :reader base_pose
    :initarg :base_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetFreeSpaceFrontierRepresentatives-request (<GetFreeSpaceFrontierRepresentatives-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFreeSpaceFrontierRepresentatives-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFreeSpaceFrontierRepresentatives-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetFreeSpaceFrontierRepresentatives-request> is deprecated: use exploration3d_msgs-srv:GetFreeSpaceFrontierRepresentatives-request instead.")))

(cl:ensure-generic-function 'base_pose-val :lambda-list '(m))
(cl:defmethod base_pose-val ((m <GetFreeSpaceFrontierRepresentatives-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:base_pose-val is deprecated.  Use exploration3d_msgs-srv:base_pose instead.")
  (base_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFreeSpaceFrontierRepresentatives-request>) ostream)
  "Serializes a message object of type '<GetFreeSpaceFrontierRepresentatives-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFreeSpaceFrontierRepresentatives-request>) istream)
  "Deserializes a message object of type '<GetFreeSpaceFrontierRepresentatives-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFreeSpaceFrontierRepresentatives-request>)))
  "Returns string type for a service object of type '<GetFreeSpaceFrontierRepresentatives-request>"
  "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeSpaceFrontierRepresentatives-request)))
  "Returns string type for a service object of type 'GetFreeSpaceFrontierRepresentatives-request"
  "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFreeSpaceFrontierRepresentatives-request>)))
  "Returns md5sum for a message object of type '<GetFreeSpaceFrontierRepresentatives-request>"
  "42bad0289ab9e4d55cd64632c44f3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFreeSpaceFrontierRepresentatives-request)))
  "Returns md5sum for a message object of type 'GetFreeSpaceFrontierRepresentatives-request"
  "42bad0289ab9e4d55cd64632c44f3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFreeSpaceFrontierRepresentatives-request>)))
  "Returns full string definition for message of type '<GetFreeSpaceFrontierRepresentatives-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFreeSpaceFrontierRepresentatives-request)))
  "Returns full string definition for message of type 'GetFreeSpaceFrontierRepresentatives-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped base_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFreeSpaceFrontierRepresentatives-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFreeSpaceFrontierRepresentatives-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFreeSpaceFrontierRepresentatives-request
    (cl:cons ':base_pose (base_pose msg))
))
;//! \htmlinclude GetFreeSpaceFrontierRepresentatives-response.msg.html

(cl:defclass <GetFreeSpaceFrontierRepresentatives-response> (roslisp-msg-protocol:ros-message)
  ((frontiers
    :reader frontiers
    :initarg :frontiers
    :type (cl:vector exploration3d_msgs-msg:FreeSpaceFrontierRepresentative)
   :initform (cl:make-array 0 :element-type 'exploration3d_msgs-msg:FreeSpaceFrontierRepresentative :initial-element (cl:make-instance 'exploration3d_msgs-msg:FreeSpaceFrontierRepresentative))))
)

(cl:defclass GetFreeSpaceFrontierRepresentatives-response (<GetFreeSpaceFrontierRepresentatives-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFreeSpaceFrontierRepresentatives-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFreeSpaceFrontierRepresentatives-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-srv:<GetFreeSpaceFrontierRepresentatives-response> is deprecated: use exploration3d_msgs-srv:GetFreeSpaceFrontierRepresentatives-response instead.")))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <GetFreeSpaceFrontierRepresentatives-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-srv:frontiers-val is deprecated.  Use exploration3d_msgs-srv:frontiers instead.")
  (frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFreeSpaceFrontierRepresentatives-response>) ostream)
  "Serializes a message object of type '<GetFreeSpaceFrontierRepresentatives-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFreeSpaceFrontierRepresentatives-response>) istream)
  "Deserializes a message object of type '<GetFreeSpaceFrontierRepresentatives-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration3d_msgs-msg:FreeSpaceFrontierRepresentative))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFreeSpaceFrontierRepresentatives-response>)))
  "Returns string type for a service object of type '<GetFreeSpaceFrontierRepresentatives-response>"
  "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeSpaceFrontierRepresentatives-response)))
  "Returns string type for a service object of type 'GetFreeSpaceFrontierRepresentatives-response"
  "exploration3d_msgs/GetFreeSpaceFrontierRepresentativesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFreeSpaceFrontierRepresentatives-response>)))
  "Returns md5sum for a message object of type '<GetFreeSpaceFrontierRepresentatives-response>"
  "42bad0289ab9e4d55cd64632c44f3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFreeSpaceFrontierRepresentatives-response)))
  "Returns md5sum for a message object of type 'GetFreeSpaceFrontierRepresentatives-response"
  "42bad0289ab9e4d55cd64632c44f3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFreeSpaceFrontierRepresentatives-response>)))
  "Returns full string definition for message of type '<GetFreeSpaceFrontierRepresentatives-response>"
  (cl:format cl:nil "FreeSpaceFrontierRepresentative[] frontiers~%~%================================================================================~%MSG: exploration3d_msgs/FreeSpaceFrontierRepresentative~%# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size ~%~%# the centroid of the freespace frontier voxel cluster~%geometry_msgs/Point p~%# the normal to the freespace frontier voxel surface at centroid~%geometry_msgs/Vector3 n~%# number of voxels in the freespace frontier cluster~%uint32 nvx~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFreeSpaceFrontierRepresentatives-response)))
  "Returns full string definition for message of type 'GetFreeSpaceFrontierRepresentatives-response"
  (cl:format cl:nil "FreeSpaceFrontierRepresentative[] frontiers~%~%================================================================================~%MSG: exploration3d_msgs/FreeSpaceFrontierRepresentative~%# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size ~%~%# the centroid of the freespace frontier voxel cluster~%geometry_msgs/Point p~%# the normal to the freespace frontier voxel surface at centroid~%geometry_msgs/Vector3 n~%# number of voxels in the freespace frontier cluster~%uint32 nvx~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFreeSpaceFrontierRepresentatives-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFreeSpaceFrontierRepresentatives-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFreeSpaceFrontierRepresentatives-response
    (cl:cons ':frontiers (frontiers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFreeSpaceFrontierRepresentatives)))
  'GetFreeSpaceFrontierRepresentatives-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFreeSpaceFrontierRepresentatives)))
  'GetFreeSpaceFrontierRepresentatives-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFreeSpaceFrontierRepresentatives)))
  "Returns string type for a service object of type '<GetFreeSpaceFrontierRepresentatives>"
  "exploration3d_msgs/GetFreeSpaceFrontierRepresentatives")