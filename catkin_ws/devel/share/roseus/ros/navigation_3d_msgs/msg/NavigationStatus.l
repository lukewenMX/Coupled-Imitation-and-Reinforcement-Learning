;; Auto-generated. Do not edit!


(when (boundp 'navigation_3d_msgs::NavigationStatus)
  (if (not (find-package "NAVIGATION_3D_MSGS"))
    (make-package "NAVIGATION_3D_MSGS"))
  (shadow 'NavigationStatus (find-package "NAVIGATION_3D_MSGS")))
(unless (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS")
  (make-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationStatus.msg.html


(intern "*WAITING*" (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(shadow '*WAITING* (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(defconstant navigation_3d_msgs::NavigationStatus::*WAITING* 0)
(intern "*ACTIVE*" (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(shadow '*ACTIVE* (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(defconstant navigation_3d_msgs::NavigationStatus::*ACTIVE* 1)
(intern "*SUCCEEDED*" (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(shadow '*SUCCEEDED* (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(defconstant navigation_3d_msgs::NavigationStatus::*SUCCEEDED* 3)
(intern "*ABORTED*" (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(shadow '*ABORTED* (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(defconstant navigation_3d_msgs::NavigationStatus::*ABORTED* 4)
(intern "*INIT*" (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(shadow '*INIT* (find-package "NAVIGATION_3D_MSGS::NAVIGATIONSTATUS"))
(defconstant navigation_3d_msgs::NavigationStatus::*INIT* 5)
(defclass navigation_3d_msgs::NavigationStatus
  :super ros::object
  :slots (_status ))

(defmethod navigation_3d_msgs::NavigationStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get navigation_3d_msgs::NavigationStatus :md5sum-) "5606ec4baf7ca5bbc5263807ea86c814")
(setf (get navigation_3d_msgs::NavigationStatus :datatype-) "navigation_3d_msgs/NavigationStatus")
(setf (get navigation_3d_msgs::NavigationStatus :definition-)
      "uint8 status          # status of the navigator

uint8 WAITING   = 0   # Waiting for next plan
uint8 ACTIVE    = 1   # plan is being executed
uint8 SUCCEEDED = 3   # plan execution just succeeded
uint8 ABORTED   = 4   # plan execution aborted
uint8 INIT      = 5   # initial state of navigator

")



(provide :navigation_3d_msgs/NavigationStatus "5606ec4baf7ca5bbc5263807ea86c814")


