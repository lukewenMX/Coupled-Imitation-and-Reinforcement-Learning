;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PolygonService)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PolygonService (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::POLYGONSERVICE")
  (make-package "PLANNING_MSGS::POLYGONSERVICE"))
(unless (find-package "PLANNING_MSGS::POLYGONSERVICEREQUEST")
  (make-package "PLANNING_MSGS::POLYGONSERVICEREQUEST"))
(unless (find-package "PLANNING_MSGS::POLYGONSERVICERESPONSE")
  (make-package "PLANNING_MSGS::POLYGONSERVICERESPONSE"))

(in-package "ROS")





(defclass planning_msgs::PolygonServiceRequest
  :super ros::object
  :slots (_polygon ))

(defmethod planning_msgs::PolygonServiceRequest
  (:init
   (&key
    ((:polygon __polygon) (instance planning_msgs::PolygonWithHolesStamped :init))
    )
   (send-super :init)
   (setq _polygon __polygon)
   self)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; planning_msgs/PolygonWithHolesStamped _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/PolygonWithHolesStamped _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/PolygonWithHolesStamped _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(defclass planning_msgs::PolygonServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod planning_msgs::PolygonServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass planning_msgs::PolygonService
  :super ros::object
  :slots ())

(setf (get planning_msgs::PolygonService :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get planning_msgs::PolygonService :datatype-) "planning_msgs/PolygonService")
(setf (get planning_msgs::PolygonService :request) planning_msgs::PolygonServiceRequest)
(setf (get planning_msgs::PolygonService :response) planning_msgs::PolygonServiceResponse)

(defmethod planning_msgs::PolygonServiceRequest
  (:response () (instance planning_msgs::PolygonServiceResponse :init)))

(setf (get planning_msgs::PolygonServiceRequest :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get planning_msgs::PolygonServiceRequest :datatype-) "planning_msgs/PolygonServiceRequest")
(setf (get planning_msgs::PolygonServiceRequest :definition-)
      "

planning_msgs/PolygonWithHolesStamped polygon

================================================================================
MSG: planning_msgs/PolygonWithHolesStamped
# A message to define a 2D polygon with holes, stamp, and altitude above ground.
Header header
float64 altitude
planning_msgs/PolygonWithHoles polygon

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
MSG: planning_msgs/PolygonWithHoles
# A message to define a 2D polygon with holes.
planning_msgs/Polygon2D hull
planning_msgs/Polygon2D[] holes

================================================================================
MSG: planning_msgs/Polygon2D
# A specification of a 2D polygon where the first and last points are assumed to be connected.
planning_msgs/Point2D[] points

================================================================================
MSG: planning_msgs/Point2D
# This contains the position of a 2D point.
float64 x
float64 y
---

bool success

")

(setf (get planning_msgs::PolygonServiceResponse :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get planning_msgs::PolygonServiceResponse :datatype-) "planning_msgs/PolygonServiceResponse")
(setf (get planning_msgs::PolygonServiceResponse :definition-)
      "

planning_msgs/PolygonWithHolesStamped polygon

================================================================================
MSG: planning_msgs/PolygonWithHolesStamped
# A message to define a 2D polygon with holes, stamp, and altitude above ground.
Header header
float64 altitude
planning_msgs/PolygonWithHoles polygon

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
MSG: planning_msgs/PolygonWithHoles
# A message to define a 2D polygon with holes.
planning_msgs/Polygon2D hull
planning_msgs/Polygon2D[] holes

================================================================================
MSG: planning_msgs/Polygon2D
# A specification of a 2D polygon where the first and last points are assumed to be connected.
planning_msgs/Point2D[] points

================================================================================
MSG: planning_msgs/Point2D
# This contains the position of a 2D point.
float64 x
float64 y
---

bool success

")



(provide :planning_msgs/PolygonService "7e5305932db903eed4a95dd3377ac6bc")


