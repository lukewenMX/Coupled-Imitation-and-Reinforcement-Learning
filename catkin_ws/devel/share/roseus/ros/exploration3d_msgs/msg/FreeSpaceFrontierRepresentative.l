;; Auto-generated. Do not edit!


(when (boundp 'exploration3d_msgs::FreeSpaceFrontierRepresentative)
  (if (not (find-package "EXPLORATION3D_MSGS"))
    (make-package "EXPLORATION3D_MSGS"))
  (shadow 'FreeSpaceFrontierRepresentative (find-package "EXPLORATION3D_MSGS")))
(unless (find-package "EXPLORATION3D_MSGS::FREESPACEFRONTIERREPRESENTATIVE")
  (make-package "EXPLORATION3D_MSGS::FREESPACEFRONTIERREPRESENTATIVE"))

(in-package "ROS")
;;//! \htmlinclude FreeSpaceFrontierRepresentative.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass exploration3d_msgs::FreeSpaceFrontierRepresentative
  :super ros::object
  :slots (_p _n _nvx ))

(defmethod exploration3d_msgs::FreeSpaceFrontierRepresentative
  (:init
   (&key
    ((:p __p) (instance geometry_msgs::Point :init))
    ((:n __n) (instance geometry_msgs::Vector3 :init))
    ((:nvx __nvx) 0)
    )
   (send-super :init)
   (setq _p __p)
   (setq _n __n)
   (setq _nvx (round __nvx))
   self)
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:n
   (&rest __n)
   (if (keywordp (car __n))
       (send* _n __n)
     (progn
       (if __n (setq _n (car __n)))
       _n)))
  (:nvx
   (&optional __nvx)
   (if __nvx (setq _nvx __nvx)) _nvx)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _p
    (send _p :serialization-length)
    ;; geometry_msgs/Vector3 _n
    (send _n :serialization-length)
    ;; uint32 _nvx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _p
       (send _p :serialize s)
     ;; geometry_msgs/Vector3 _n
       (send _n :serialize s)
     ;; uint32 _nvx
       (write-long _nvx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;; geometry_msgs/Vector3 _n
     (send _n :deserialize buf ptr-) (incf ptr- (send _n :serialization-length))
   ;; uint32 _nvx
     (setq _nvx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentative :md5sum-) "f2040b5472a070e8f5b7ea2b2735cd22")
(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentative :datatype-) "exploration3d_msgs/FreeSpaceFrontierRepresentative")
(setf (get exploration3d_msgs::FreeSpaceFrontierRepresentative :definition-)
      "# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size 

# the centroid of the freespace frontier voxel cluster
geometry_msgs/Point p
# the normal to the freespace frontier voxel surface at centroid
geometry_msgs/Vector3 n
# number of voxels in the freespace frontier cluster
uint32 nvx

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :exploration3d_msgs/FreeSpaceFrontierRepresentative "f2040b5472a070e8f5b7ea2b2735cd22")


