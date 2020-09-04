; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-msg)


;//! \htmlinclude FreeSpaceFrontierRepresentative.msg.html

(cl:defclass <FreeSpaceFrontierRepresentative> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (n
    :reader n
    :initarg :n
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (nvx
    :reader nvx
    :initarg :nvx
    :type cl:integer
    :initform 0))
)

(cl:defclass FreeSpaceFrontierRepresentative (<FreeSpaceFrontierRepresentative>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FreeSpaceFrontierRepresentative>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FreeSpaceFrontierRepresentative)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-msg:<FreeSpaceFrontierRepresentative> is deprecated: use exploration3d_msgs-msg:FreeSpaceFrontierRepresentative instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <FreeSpaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:p-val is deprecated.  Use exploration3d_msgs-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <FreeSpaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:n-val is deprecated.  Use exploration3d_msgs-msg:n instead.")
  (n m))

(cl:ensure-generic-function 'nvx-val :lambda-list '(m))
(cl:defmethod nvx-val ((m <FreeSpaceFrontierRepresentative>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:nvx-val is deprecated.  Use exploration3d_msgs-msg:nvx instead.")
  (nvx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FreeSpaceFrontierRepresentative>) ostream)
  "Serializes a message object of type '<FreeSpaceFrontierRepresentative>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'n) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nvx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nvx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nvx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FreeSpaceFrontierRepresentative>) istream)
  "Deserializes a message object of type '<FreeSpaceFrontierRepresentative>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'n) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nvx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nvx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nvx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FreeSpaceFrontierRepresentative>)))
  "Returns string type for a message object of type '<FreeSpaceFrontierRepresentative>"
  "exploration3d_msgs/FreeSpaceFrontierRepresentative")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FreeSpaceFrontierRepresentative)))
  "Returns string type for a message object of type 'FreeSpaceFrontierRepresentative"
  "exploration3d_msgs/FreeSpaceFrontierRepresentative")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FreeSpaceFrontierRepresentative>)))
  "Returns md5sum for a message object of type '<FreeSpaceFrontierRepresentative>"
  "f2040b5472a070e8f5b7ea2b2735cd22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FreeSpaceFrontierRepresentative)))
  "Returns md5sum for a message object of type 'FreeSpaceFrontierRepresentative"
  "f2040b5472a070e8f5b7ea2b2735cd22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FreeSpaceFrontierRepresentative>)))
  "Returns full string definition for message of type '<FreeSpaceFrontierRepresentative>"
  (cl:format cl:nil "# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size ~%~%# the centroid of the freespace frontier voxel cluster~%geometry_msgs/Point p~%# the normal to the freespace frontier voxel surface at centroid~%geometry_msgs/Vector3 n~%# number of voxels in the freespace frontier cluster~%uint32 nvx~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FreeSpaceFrontierRepresentative)))
  "Returns full string definition for message of type 'FreeSpaceFrontierRepresentative"
  (cl:format cl:nil "# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size ~%~%# the centroid of the freespace frontier voxel cluster~%geometry_msgs/Point p~%# the normal to the freespace frontier voxel surface at centroid~%geometry_msgs/Vector3 n~%# number of voxels in the freespace frontier cluster~%uint32 nvx~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FreeSpaceFrontierRepresentative>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'n))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FreeSpaceFrontierRepresentative>))
  "Converts a ROS message object to a list"
  (cl:list 'FreeSpaceFrontierRepresentative
    (cl:cons ':p (p msg))
    (cl:cons ':n (n msg))
    (cl:cons ':nvx (nvx msg))
))
