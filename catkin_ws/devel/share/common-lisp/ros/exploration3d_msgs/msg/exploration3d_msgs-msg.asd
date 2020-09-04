
(cl:in-package :asdf)

(defsystem "exploration3d_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExplorationTask" :depends-on ("_package_ExplorationTask"))
    (:file "_package_ExplorationTask" :depends-on ("_package"))
    (:file "ExplorationTaskUpdate" :depends-on ("_package_ExplorationTaskUpdate"))
    (:file "_package_ExplorationTaskUpdate" :depends-on ("_package"))
    (:file "FreeSpaceFrontierRepresentative" :depends-on ("_package_FreeSpaceFrontierRepresentative"))
    (:file "_package_FreeSpaceFrontierRepresentative" :depends-on ("_package"))
    (:file "FreeSpaceFrontierRepresentatives" :depends-on ("_package_FreeSpaceFrontierRepresentatives"))
    (:file "_package_FreeSpaceFrontierRepresentatives" :depends-on ("_package"))
    (:file "SurfaceFrontierRepresentative" :depends-on ("_package_SurfaceFrontierRepresentative"))
    (:file "_package_SurfaceFrontierRepresentative" :depends-on ("_package"))
    (:file "SurfaceFrontierRepresentatives" :depends-on ("_package_SurfaceFrontierRepresentatives"))
    (:file "_package_SurfaceFrontierRepresentatives" :depends-on ("_package"))
    (:file "SurfaceFrontierUpdates" :depends-on ("_package_SurfaceFrontierUpdates"))
    (:file "_package_SurfaceFrontierUpdates" :depends-on ("_package"))
  ))