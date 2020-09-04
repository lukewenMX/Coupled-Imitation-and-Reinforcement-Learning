;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PolygonWithHoles)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PolygonWithHoles (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::POLYGONWITHHOLES")
  (make-package "PLANNING_MSGS::POLYGONWITHHOLES"))

(in-package "ROS")
;;//! \htmlinclude PolygonWithHoles.msg.html


(defclass planning_msgs::PolygonWithHoles
  :super ros::object
  :slots (_hull _holes ))

(defmethod planning_msgs::PolygonWithHoles
  (:init
   (&key
    ((:hull __hull) (instance planning_msgs::Polygon2D :init))
    ((:holes __holes) (let (r) (dotimes (i 0) (push (instance planning_msgs::Polygon2D :init) r)) r))
    )
   (send-super :init)
   (setq _hull __hull)
   (setq _holes __holes)
   self)
  (:hull
   (&rest __hull)
   (if (keywordp (car __hull))
       (send* _hull __hull)
     (progn
       (if __hull (setq _hull (car __hull)))
       _hull)))
  (:holes
   (&rest __holes)
   (if (keywordp (car __holes))
       (send* _holes __holes)
     (progn
       (if __holes (setq _holes (car __holes)))
       _holes)))
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Polygon2D _hull
    (send _hull :serialization-length)
    ;; planning_msgs/Polygon2D[] _holes
    (apply #'+ (send-all _holes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Polygon2D _hull
       (send _hull :serialize s)
     ;; planning_msgs/Polygon2D[] _holes
     (write-long (length _holes) s)
     (dolist (elem _holes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Polygon2D _hull
     (send _hull :deserialize buf ptr-) (incf ptr- (send _hull :serialization-length))
   ;; planning_msgs/Polygon2D[] _holes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _holes (let (r) (dotimes (i n) (push (instance planning_msgs::Polygon2D :init) r)) r))
     (dolist (elem- _holes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::PolygonWithHoles :md5sum-) "df7f266352dfcf3e4d29156dd85febf9")
(setf (get planning_msgs::PolygonWithHoles :datatype-) "planning_msgs/PolygonWithHoles")
(setf (get planning_msgs::PolygonWithHoles :definition-)
      "# A message to define a 2D polygon with holes.
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

")



(provide :planning_msgs/PolygonWithHoles "df7f266352dfcf3e4d29156dd85febf9")


