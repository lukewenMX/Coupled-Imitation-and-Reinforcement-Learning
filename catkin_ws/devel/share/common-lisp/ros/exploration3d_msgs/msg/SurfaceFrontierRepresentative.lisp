; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-msg)


;//! \htmlinclude SurfaceFrontierRepresentative.msg.html

(cl:defclass <SurfaceFrontierRepresentative> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (parent_length
    :reader parent_length
    :initarg :parent_length
    :type cl:float
    :initform 0.0)
   (corner_1
    :reader corner_1
    :initarg :corner_1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (corner_2
    :reader corner_2
    :initarg :corner_2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (parent_corner_1
    :reader parent_corner_1
    :initarg :parent_corner_1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (parent_corner_2
    :reader parent_corner_2
    :initarg :parent_corner_2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (v
    :reader v
    :initarg :v
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (f_grad
    :reader f_grad
    :initarg :f_grad
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (n
    :reader n
    :initarg :n
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (is_floor
    :reader is_floor
    :initarg :is_floor
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SurfaceFrontierRepresentative (<SurfaceFrontierRepresentative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurfaceFrontierRepresentative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurfaceFrontierRepresentative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-msg:<SurfaceFrontierRepresentative> is deprecated: use exploration3d_msgs-msg:SurfaceFrontierRepresentative instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:p-val is deprecated.  Use exploration3d_msgs-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:length-val is deprecated.  Use exploration3d_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'parent_length-val :lambda-list '(m))
(cl:defmethod parent_length-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:parent_length-val is deprecated.  Use exploration3d_msgs-msg:parent_length instead.")
  (parent_length m))

(cl:ensure-generic-function 'corner_1-val :lambda-list '(m))
(cl:defmethod corner_1-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:corner_1-val is deprecated.  Use exploration3d_msgs-msg:corner_1 instead.")
  (corner_1 m))

(cl:ensure-generic-function 'corner_2-val :lambda-list '(m))
(cl:defmethod corner_2-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:corner_2-val is deprecated.  Use exploration3d_msgs-msg:corner_2 instead.")
  (corner_2 m))

(cl:ensure-generic-function 'parent_corner_1-val :lambda-list '(m))
(cl:defmethod parent_corner_1-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:parent_corner_1-val is deprecated.  Use exploration3d_msgs-msg:parent_corner_1 instead.")
  (parent_corner_1 m))

(cl:ensure-generic-function 'parent_corner_2-val :lambda-list '(m))
(cl:defmethod parent_corner_2-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:parent_corner_2-val is deprecated.  Use exploration3d_msgs-msg:parent_corner_2 instead.")
  (parent_corner_2 m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:v-val is deprecated.  Use exploration3d_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'f_grad-val :lambda-list '(m))
(cl:defmethod f_grad-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:f_grad-val is deprecated.  Use exploration3d_msgs-msg:f_grad instead.")
  (f_grad m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:n-val is deprecated.  Use exploration3d_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:a-val is deprecated.  Use exploration3d_msgs-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'is_floor-val :lambda-list '(m))
(cl:defmethod is_floor-val ((m <SurfaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:is_floor-val is deprecated.  Use exploration3d_msgs-msg:is_floor instead.")
  (is_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurfaceFrontierRepresentative>) ostream)
  "Serializes a message object of type '<SurfaceFrontierRepresentative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'parent_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'corner_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'corner_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parent_corner_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parent_corner_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'f_grad) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'n) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_floor) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurfaceFrontierRepresentative>) istream)
  "Deserializes a message object of type '<SurfaceFrontierRepresentative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parent_length) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'corner_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'corner_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parent_corner_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parent_corner_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'f_grad) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'n) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_floor) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurfaceFrontierRepresentative>)))
  "Returns string type for a message object of type '<SurfaceFrontierRepresentative>"
  "exploration3d_msgs/SurfaceFrontierRepresentative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurfaceFrontierRepresentative)))
  "Returns string type for a message object of type 'SurfaceFrontierRepresentative"
  "exploration3d_msgs/SurfaceFrontierRepresentative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurfaceFrontierRepresentative>)))
  "Returns md5sum for a message object of type '<SurfaceFrontierRepresentative>"
  "ed77d51612da3010c5ebfa0790477505")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurfaceFrontierRepresentative)))
  "Returns md5sum for a message object of type 'SurfaceFrontierRepresentative"
  "ed77d51612da3010c5ebfa0790477505")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurfaceFrontierRepresentative>)))
  "Returns full string definition for message of type '<SurfaceFrontierRepresentative>"
  (cl:format cl:nil "# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurfaceFrontierRepresentative)))
  "Returns full string definition for message of type 'SurfaceFrontierRepresentative"
  (cl:format cl:nil "# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.~%~%# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.~%~%# the single 3D point representing a surface frontier~%geometry_msgs/Point p~%# the length of the frontier in meters~%float32 length~%# the length of the parent frontier contour in meters~%float32 parent_length~%# the corner points associated with the frontier representative~%geometry_msgs/Point corner_1~%geometry_msgs/Point corner_2~%# the two corner points of the parent frontier contour containing the frontier~%geometry_msgs/Point parent_corner_1~%geometry_msgs/Point parent_corner_2~%# surface trend vector~%geometry_msgs/Point v~%# tangent to the surface frontier contour at representative point p~%geometry_msgs/Point f_grad~%# surface normal at p oriented towards the reachable portion of the environment~%geometry_msgs/Point n~%# Coeffcient of the quadratic used to approximate surface trend curve~%float64 a~%# if the representative is from the surface the robot traversed~%bool is_floor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurfaceFrontierRepresentative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'corner_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'corner_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parent_corner_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parent_corner_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'f_grad))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'n))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurfaceFrontierRepresentative>))
  "Converts a ROS message object to a list"
  (cl:list 'SurfaceFrontierRepresentative
    (cl:cons ':p (p msg))
    (cl:cons ':length (length msg))
    (cl:cons ':parent_length (parent_length msg))
    (cl:cons ':corner_1 (corner_1 msg))
    (cl:cons ':corner_2 (corner_2 msg))
    (cl:cons ':parent_corner_1 (parent_corner_1 msg))
    (cl:cons ':parent_corner_2 (parent_corner_2 msg))
    (cl:cons ':v (v msg))
    (cl:cons ':f_grad (f_grad msg))
    (cl:cons ':n (n msg))
    (cl:cons ':a (a msg))
    (cl:cons ':is_floor (is_floor msg))
))
