
(cl:in-package :asdf)

(defsystem "exploration3d_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :exploration3d_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetFreeSpaceFrontierRepresentatives" :depends-on ("_package_GetFreeSpaceFrontierRepresentatives"))
    (:file "_package_GetFreeSpaceFrontierRepresentatives" :depends-on ("_package"))
    (:file "GetSurfaceFrontierRepresentatives" :depends-on ("_package_GetSurfaceFrontierRepresentatives"))
    (:file "_package_GetSurfaceFrontierRepresentatives" :depends-on ("_package"))
    (:file "GetSurfaceFrontierUpdates" :depends-on ("_package_GetSurfaceFrontierUpdates"))
    (:file "_package_GetSurfaceFrontierUpdates" :depends-on ("_package"))
  ))