;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::SurfaceFrontierRepresentative)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'SurfaceFrontierRepresentative (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::SURFACEFRONTIERREPRESENTATIVE")
  (make-package "EXPLORATION3D_MSGS::SURFACEFRONTIERREPRESENTATIVE"))

(in-package "ROS")
;;//! \htmlinclude SurfaceFrontierRepresentative.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass exploration3d_msgs::SurfaceFrontierRepresentative
  :super ros::object
  :slots (_p _length _parent_length _corner_1 _corner_2 _parent_corner_1 _parent_corner_2 _v _f_grad _n _a _is_floor ))

(defmethod exploration3d_msgs::SurfaceFrontierRepresentative
  (:init
   (&key
    ((:p __p) (instance geometry_msgs::Point :init))
    ((:length __length) 0.0)
    ((:parent_length __parent_length) 0.0)
    ((:corner_1 __corner_1) (instance geometry_msgs::Point :init))
    ((:corner_2 __corner_2) (instance geometry_msgs::Point :init))
    ((:parent_corner_1 __parent_corner_1) (instance geometry_msgs::Point :init))
    ((:parent_corner_2 __parent_corner_2) (instance geometry_msgs::Point :init))
    ((:v __v) (instance geometry_msgs::Point :init))
    ((:f_grad __f_grad) (instance geometry_msgs::Point :init))
    ((:n __n) (instance geometry_msgs::Point :init))
    ((:a __a) 0.0)
    ((:is_floor __is_floor) nil)
    )
   (send-super :init)
   (setq _p __p)
   (setq _length (float __length))
   (setq _parent_length (float __parent_length))
   (setq _corner_1 __corner_1)
   (setq _corner_2 __corner_2)
   (setq _parent_corner_1 __parent_corner_1)
   (setq _parent_corner_2 __parent_corner_2)
   (setq _v __v)
   (setq _f_grad __f_grad)
   (setq _n __n)
   (setq _a (float __a))
   (setq _is_floor __is_floor)
   self)
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:parent_length
   (&optional __parent_length)
   (if __parent_length (setq _parent_length __parent_length)) _parent_length)
  (:corner_1
   (&rest __corner_1)
   (if (keywordp (car __corner_1))
       (send* _corner_1 __corner_1)
     (progn
       (if __corner_1 (setq _corner_1 (car __corner_1)))
       _corner_1)))
  (:corner_2
   (&rest __corner_2)
   (if (keywordp (car __corner_2))
       (send* _corner_2 __corner_2)
     (progn
       (if __corner_2 (setq _corner_2 (car __corner_2)))
       _corner_2)))
  (:parent_corner_1
   (&rest __parent_corner_1)
   (if (keywordp (car __parent_corner_1))
       (send* _parent_corner_1 __parent_corner_1)
     (progn
       (if __parent_corner_1 (setq _parent_corner_1 (car __parent_corner_1)))
       _parent_corner_1)))
  (:parent_corner_2
   (&rest __parent_corner_2)
   (if (keywordp (car __parent_corner_2))
       (send* _parent_corner_2 __parent_corner_2)
     (progn
       (if __parent_corner_2 (setq _parent_corner_2 (car __parent_corner_2)))
       _parent_corner_2)))
  (:v
   (&rest __v)
   (if (keywordp (car __v))
       (send* _v __v)
     (progn
       (if __v (setq _v (car __v)))
       _v)))
  (:f_grad
   (&rest __f_grad)
   (if (keywordp (car __f_grad))
       (send* _f_grad __f_grad)
     (progn
       (if __f_grad (setq _f_grad (car __f_grad)))
       _f_grad)))
  (:n
   (&rest __n)
   (if (keywordp (car __n))
       (send* _n __n)
     (progn
       (if __n (setq _n (car __n)))
       _n)))
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:is_floor
   (&optional __is_floor)
   (if __is_floor (setq _is_floor __is_floor)) _is_floor)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _p
    (send _p :serialization-length)
    ;; float32 _length
    4
    ;; float32 _parent_length
    4
    ;; geometry_msgs/Point _corner_1
    (send _corner_1 :serialization-length)
    ;; geometry_msgs/Point _corner_2
    (send _corner_2 :serialization-length)
    ;; geometry_msgs/Point _parent_corner_1
    (send _parent_corner_1 :serialization-length)
    ;; geometry_msgs/Point _parent_corner_2
    (send _parent_corner_2 :serialization-length)
    ;; geometry_msgs/Point _v
    (send _v :serialization-length)
    ;; geometry_msgs/Point _f_grad
    (send _f_grad :serialization-length)
    ;; geometry_msgs/Point _n
    (send _n :serialization-length)
    ;; float64 _a
    8
    ;; bool _is_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _p
       (send _p :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _parent_length
       (sys::poke _parent_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _corner_1
       (send _corner_1 :serialize s)
     ;; geometry_msgs/Point _corner_2
       (send _corner_2 :serialize s)
     ;; geometry_msgs/Point _parent_corner_1
       (send _parent_corner_1 :serialize s)
     ;; geometry_msgs/Point _parent_corner_2
       (send _parent_corner_2 :serialize s)
     ;; geometry_msgs/Point _v
       (send _v :serialize s)
     ;; geometry_msgs/Point _f_grad
       (send _f_grad :serialize s)
     ;; geometry_msgs/Point _n
       (send _n :serialize s)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_floor
       (if _is_floor (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _parent_length
     (setq _parent_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _corner_1
     (send _corner_1 :deserialize buf ptr-) (incf ptr- (send _corner_1 :serialization-length))
   ;; geometry_msgs/Point _corner_2
     (send _corner_2 :deserialize buf ptr-) (incf ptr- (send _corner_2 :serialization-length))
   ;; geometry_msgs/Point _parent_corner_1
     (send _parent_corner_1 :deserialize buf ptr-) (incf ptr- (send _parent_corner_1 :serialization-length))
   ;; geometry_msgs/Point _parent_corner_2
     (send _parent_corner_2 :deserialize buf ptr-) (incf ptr- (send _parent_corner_2 :serialization-length))
   ;; geometry_msgs/Point _v
     (send _v :deserialize buf ptr-) (incf ptr- (send _v :serialization-length))
   ;; geometry_msgs/Point _f_grad
     (send _f_grad :deserialize buf ptr-) (incf ptr- (send _f_grad :serialization-length))
   ;; geometry_msgs/Point _n
     (send _n :deserialize buf ptr-) (incf ptr- (send _n :serialization-length))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_floor
     (setq _is_floor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get exploration3d_msgs::SurfaceFrontierRepresentative :md5sum-) "ed77d51612da3010c5ebfa0790477505")
(setf (get exploration3d_msgs::SurfaceFrontierRepresentative :datatype-) "exploration3d_msgs/SurfaceFrontierRepresentative")
(setf (get exploration3d_msgs::SurfaceFrontierRepresentative :definition-)
      "# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.

# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.

# the single 3D point representing a surface frontier
geometry_msgs/Point p
# the length of the frontier in meters
float32 length
# the length of the parent frontier contour in meters
float32 parent_length
# the corner points associated with the frontier representative
geometry_msgs/Point corner_1
geometry_msgs/Point corner_2
# the two corner points of the parent frontier contour containing the frontier
geometry_msgs/Point parent_corner_1
geometry_msgs/Point parent_corner_2
# surface trend vector
geometry_msgs/Point v
# tangent to the surface frontier contour at representative point p
geometry_msgs/Point f_grad
# surface normal at p oriented towards the reachable portion of the environment
geometry_msgs/Point n
# Coeffcient of the quadratic used to approximate surface trend curve
float64 a
# if the representative is from the surface the robot traversed
bool is_floor

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :exploration3d_msgs/SurfaceFrontierRepresentative "ed77d51612da3010c5ebfa0790477505")


