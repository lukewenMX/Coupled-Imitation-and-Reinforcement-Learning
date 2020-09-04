; Auto-generated. Do not edit!


(cl:in-package exploration3d_msgs-msg)


;//! \htmlinclude ExplorationTaskUpdate.msg.html

(cl:defclass <ExplorationTaskUpdate> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:fixnum
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (visited_poses
    :reader visited_poses
    :initarg :visited_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass ExplorationTaskUpdate (<ExplorationTaskUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExplorationTaskUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExplorationTaskUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration3d_msgs-msg:<ExplorationTaskUpdate> is deprecated: use exploration3d_msgs-msg:ExplorationTaskUpdate instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ExplorationTaskUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:robot_id-val is deprecated.  Use exploration3d_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ExplorationTaskUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:task_id-val is deprecated.  Use exploration3d_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExplorationTaskUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:success-val is deprecated.  Use exploration3d_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'visited_poses-val :lambda-list '(m))
(cl:defmethod visited_poses-val ((m <ExplorationTaskUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration3d_msgs-msg:visited_poses-val is deprecated.  Use exploration3d_msgs-msg:visited_poses instead.")
  (visited_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExplorationTaskUpdate>) ostream)
  "Serializes a message object of type '<ExplorationTaskUpdate>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'visited_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'visited_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExplorationTaskUpdate>) istream)
  "Deserializes a message object of type '<ExplorationTaskUpdate>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'visited_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'visited_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExplorationTaskUpdate>)))
  "Returns string type for a message object of type '<ExplorationTaskUpdate>"
  "exploration3d_msgs/ExplorationTaskUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExplorationTaskUpdate)))
  "Returns string type for a message object of type 'ExplorationTaskUpdate"
  "exploration3d_msgs/ExplorationTaskUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExplorationTaskUpdate>)))
  "Returns md5sum for a message object of type '<ExplorationTaskUpdate>"
  "ee97353beddf617331562d4c082cdaad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExplorationTaskUpdate)))
  "Returns md5sum for a message object of type 'ExplorationTaskUpdate"
  "ee97353beddf617331562d4c082cdaad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExplorationTaskUpdate>)))
  "Returns full string definition for message of type '<ExplorationTaskUpdate>"
  (cl:format cl:nil "# The ID of the robot to which this exploration task update belongs to~%string robot_id~%# The sequence ID of the exploration task~%uint16 task_id~%# Has the exploration task being successfully completed~%bool success~%# If unsuccesful, what was the sequence of view poses the robot successfully visited~%geometry_msgs/Pose[] visited_poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExplorationTaskUpdate)))
  "Returns full string definition for message of type 'ExplorationTaskUpdate"
  (cl:format cl:nil "# The ID of the robot to which this exploration task update belongs to~%string robot_id~%# The sequence ID of the exploration task~%uint16 task_id~%# Has the exploration task being successfully completed~%bool success~%# If unsuccesful, what was the sequence of view poses the robot successfully visited~%geometry_msgs/Pose[] visited_poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExplorationTaskUpdate>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'visited_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExplorationTaskUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'ExplorationTaskUpdate
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':success (success msg))
    (cl:cons ':visited_poses (visited_poses msg))
))
