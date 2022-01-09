
(cl:in-package :asdf)

(defsystem "open_manipulator_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "JointPosition" :depends-on ("_package_JointPosition"))
    (:file "_package_JointPosition" :depends-on ("_package"))
    (:file "KinematicsPose" :depends-on ("_package_KinematicsPose"))
    (:file "_package_KinematicsPose" :depends-on ("_package"))
    (:file "OpenManipulatorState" :depends-on ("_package_OpenManipulatorState"))
    (:file "_package_OpenManipulatorState" :depends-on ("_package"))
  ))