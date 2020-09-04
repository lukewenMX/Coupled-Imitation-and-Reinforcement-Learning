; Auto-generated. Do not edit!


(cl:in-package navigation_3d_msgs-msg)


;//! \htmlinclude SurfaceMap.msg.html

(cl:defclass <SurfaceMap> (roslisp-msg-protocol:ros-message)
  ((width_
    :reader width_
    :initarg :width_
    :type cl:integer
    :initform 0)
   (height_
    :reader height_
    :initarg :height_
    :type cl:integer
    :initform 0)
   (origin_
    :reader origin_
    :initarg :origin_
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (resolution_
    :reader resolution_
    :initarg :resolution_
    :type cl:float
    :initform 0.0)
   (H_
    :reader H_
    :initarg :H_
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SurfaceMap (<SurfaceMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurfaceMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurfaceMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_3d_msgs-msg:<SurfaceMap> is deprecated: use navigation_3d_msgs-msg:SurfaceMap instead.")))

(cl:ensure-generic-function 'width_-val :lambda-list '(m))
(cl:defmethod width_-val ((m <SurfaceMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:width_-val is deprecated.  Use navigation_3d_msgs-msg:width_ instead.")
  (width_ m))

(cl:ensure-generic-function 'height_-val :lambda-list '(m))
(cl:defmethod height_-val ((m <SurfaceMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:height_-val is deprecated.  Use navigation_3d_msgs-msg:height_ instead.")
  (height_ m))

(cl:ensure-generic-function 'origin_-val :lambda-list '(m))
(cl:defmethod origin_-val ((m <SurfaceMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:origin_-val is deprecated.  Use navigation_3d_msgs-msg:origin_ instead.")
  (origin_ m))

(cl:ensure-generic-function 'resolution_-val :lambda-list '(m))
(cl:defmethod resolution_-val ((m <SurfaceMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:resolution_-val is deprecated.  Use navigation_3d_msgs-msg:resolution_ instead.")
  (resolution_ m))

(cl:ensure-generic-function 'H_-val :lambda-list '(m))
(cl:defmethod H_-val ((m <SurfaceMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:H_-val is deprecated.  Use navigation_3d_msgs-msg:H_ instead.")
  (H_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurfaceMap>) ostream)
  "Serializes a message object of type '<SurfaceMap>"
  (cl:let* ((signed (cl:slot-value msg 'width_)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height_)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin_) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'H_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'H_))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurfaceMap>) istream)
  "Deserializes a message object of type '<SurfaceMap>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width_) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height_) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin_) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution_) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'H_) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'H_)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurfaceMap>)))
  "Returns string type for a message object of type '<SurfaceMap>"
  "navigation_3d_msgs/SurfaceMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurfaceMap)))
  "Returns string type for a message object of type 'SurfaceMap"
  "navigation_3d_msgs/SurfaceMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurfaceMap>)))
  "Returns md5sum for a message object of type '<SurfaceMap>"
  "f3e2530951abea04475d9a0a18c55de6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurfaceMap)))
  "Returns md5sum for a message object of type 'SurfaceMap"
  "f3e2530951abea04475d9a0a18c55de6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurfaceMap>)))
  "Returns full string definition for message of type '<SurfaceMap>"
  (cl:format cl:nil "# width of the 2D grid in number of cells~%int32 width_~%# height of the 2D grid in number of cells~%int32 height_~%# origin of thet grid~%geometry_msgs/Point origin_~%# resolution of the grid (m/cell)~%float32 resolution_~%# vector containing the grid in row-major order (size of H_ = width_*height_)~%float32[] H_~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurfaceMap)))
  "Returns full string definition for message of type 'SurfaceMap"
  (cl:format cl:nil "# width of the 2D grid in number of cells~%int32 width_~%# height of the 2D grid in number of cells~%int32 height_~%# origin of thet grid~%geometry_msgs/Point origin_~%# resolution of the grid (m/cell)~%float32 resolution_~%# vector containing the grid in row-major order (size of H_ = width_*height_)~%float32[] H_~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurfaceMap>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin_))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'H_) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurfaceMap>))
  "Converts a ROS message object to a list"
  (cl:list 'SurfaceMap
    (cl:cons ':width_ (width_ msg))
    (cl:cons ':height_ (height_ msg))
    (cl:cons ':origin_ (origin_ msg))
    (cl:cons ':resolution_ (resolution_ msg))
    (cl:cons ':H_ (H_ msg))
))
