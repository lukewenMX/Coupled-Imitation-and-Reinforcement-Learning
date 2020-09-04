; Auto-generated. Do not edit!


(cl:in-package navigation_3d_msgs-msg)


;//! \htmlinclude NavigationStatus.msg.html

(cl:defclass <NavigationStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavigationStatus (<NavigationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_3d_msgs-msg:<NavigationStatus> is deprecated: use navigation_3d_msgs-msg:NavigationStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_3d_msgs-msg:status-val is deprecated.  Use navigation_3d_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationStatus>)))
    "Constants for message type '<NavigationStatus>"
  '((:WAITING . 0)
    (:ACTIVE . 1)
    (:SUCCEEDED . 3)
    (:ABORTED . 4)
    (:INIT . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationStatus)))
    "Constants for message type 'NavigationStatus"
  '((:WAITING . 0)
    (:ACTIVE . 1)
    (:SUCCEEDED . 3)
    (:ABORTED . 4)
    (:INIT . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatus>) ostream)
  "Serializes a message object of type '<NavigationStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatus>) istream)
  "Deserializes a message object of type '<NavigationStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatus>)))
  "Returns string type for a message object of type '<NavigationStatus>"
  "navigation_3d_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatus)))
  "Returns string type for a message object of type 'NavigationStatus"
  "navigation_3d_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatus>)))
  "Returns md5sum for a message object of type '<NavigationStatus>"
  "5606ec4baf7ca5bbc5263807ea86c814")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatus)))
  "Returns md5sum for a message object of type 'NavigationStatus"
  "5606ec4baf7ca5bbc5263807ea86c814")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatus>)))
  "Returns full string definition for message of type '<NavigationStatus>"
  (cl:format cl:nil "uint8 status          # status of the navigator~%~%uint8 WAITING   = 0   # Waiting for next plan~%uint8 ACTIVE    = 1   # plan is being executed~%uint8 SUCCEEDED = 3   # plan execution just succeeded~%uint8 ABORTED   = 4   # plan execution aborted~%uint8 INIT      = 5   # initial state of navigator~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatus)))
  "Returns full string definition for message of type 'NavigationStatus"
  (cl:format cl:nil "uint8 status          # status of the navigator~%~%uint8 WAITING   = 0   # Waiting for next plan~%uint8 ACTIVE    = 1   # plan is being executed~%uint8 SUCCEEDED = 3   # plan execution just succeeded~%uint8 ABORTED   = 4   # plan execution aborted~%uint8 INIT      = 5   # initial state of navigator~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatus
    (cl:cons ':status (status msg))
))
