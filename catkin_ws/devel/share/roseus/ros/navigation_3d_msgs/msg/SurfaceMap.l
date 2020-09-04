;; Auto-generated. Do not edit!


(when (boundp 'navigation_3d_msgs::SurfaceMap)
  (if (not (find-package "NAVIGATION_3D_MSGS"))
    (make-package "NAVIGATION_3D_MSGS"))
  (shadow 'SurfaceMap (find-package "NAVIGATION_3D_MSGS")))
(unless (find-package "NAVIGATION_3D_MSGS::SURFACEMAP")
  (make-package "NAVIGATION_3D_MSGS::SURFACEMAP"))

(in-package "ROS")
;;//! \htmlinclude SurfaceMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass navigation_3d_msgs::SurfaceMap
  :super ros::object
  :slots (_width_ _height_ _origin_ _resolution_ _H_ ))

(defmethod navigation_3d_msgs::SurfaceMap
  (:init
   (&key
    ((:width_ __width_) 0)
    ((:height_ __height_) 0)
    ((:origin_ __origin_) (instance geometry_msgs::Point :init))
    ((:resolution_ __resolution_) 0.0)
    ((:H_ __H_) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _width_ (round __width_))
   (setq _height_ (round __height_))
   (setq _origin_ __origin_)
   (setq _resolution_ (float __resolution_))
   (setq _H_ __H_)
   self)
  (:width_
   (&optional __width_)
   (if __width_ (setq _width_ __width_)) _width_)
  (:height_
   (&optional __height_)
   (if __height_ (setq _height_ __height_)) _height_)
  (:origin_
   (&rest __origin_)
   (if (keywordp (car __origin_))
       (send* _origin_ __origin_)
     (progn
       (if __origin_ (setq _origin_ (car __origin_)))
       _origin_)))
  (:resolution_
   (&optional __resolution_)
   (if __resolution_ (setq _resolution_ __resolution_)) _resolution_)
  (:H_
   (&optional __H_)
   (if __H_ (setq _H_ __H_)) _H_)
  (:serialization-length
   ()
   (+
    ;; int32 _width_
    4
    ;; int32 _height_
    4
    ;; geometry_msgs/Point _origin_
    (send _origin_ :serialization-length)
    ;; float32 _resolution_
    4
    ;; float32[] _H_
    (* 4    (length _H_)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width_
       (write-long _width_ s)
     ;; int32 _height_
       (write-long _height_ s)
     ;; geometry_msgs/Point _origin_
       (send _origin_ :serialize s)
     ;; float32 _resolution_
       (sys::poke _resolution_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _H_
     (write-long (length _H_) s)
     (dotimes (i (length _H_))
       (sys::poke (elt _H_ i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width_
     (setq _width_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height_
     (setq _height_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _origin_
     (send _origin_ :deserialize buf ptr-) (incf ptr- (send _origin_ :serialization-length))
   ;; float32 _resolution_
     (setq _resolution_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _H_
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _H_ (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _H_ i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get navigation_3d_msgs::SurfaceMap :md5sum-) "f3e2530951abea04475d9a0a18c55de6")
(setf (get navigation_3d_msgs::SurfaceMap :datatype-) "navigation_3d_msgs/SurfaceMap")
(setf (get navigation_3d_msgs::SurfaceMap :definition-)
      "# width of the 2D grid in number of cells
int32 width_
# height of the 2D grid in number of cells
int32 height_
# origin of thet grid
geometry_msgs/Point origin_
# resolution of the grid (m/cell)
float32 resolution_
# vector containing the grid in row-major order (size of H_ = width_*height_)
float32[] H_
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :navigation_3d_msgs/SurfaceMap "f3e2530951abea04475d9a0a18c55de6")


