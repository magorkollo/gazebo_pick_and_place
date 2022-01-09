;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::OpenManipulatorState)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'OpenManipulatorState (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE")
  (make-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude OpenManipulatorState.msg.html


(intern "*IS_MOVING*" (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(shadow '*IS_MOVING* (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(defconstant open_manipulator_msgs::OpenManipulatorState::*IS_MOVING* "\"IS_MOVING\"")
(intern "*STOPPED*" (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(shadow '*STOPPED* (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(defconstant open_manipulator_msgs::OpenManipulatorState::*STOPPED* "\"STOPPED\"")
(intern "*ACTUATOR_ENABLED*" (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(shadow '*ACTUATOR_ENABLED* (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(defconstant open_manipulator_msgs::OpenManipulatorState::*ACTUATOR_ENABLED* "\"ACTUATOR_ENABLED\"")
(intern "*ACTUATOR_DISABLED*" (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(shadow '*ACTUATOR_DISABLED* (find-package "OPEN_MANIPULATOR_MSGS::OPENMANIPULATORSTATE"))
(defconstant open_manipulator_msgs::OpenManipulatorState::*ACTUATOR_DISABLED* "\"ACTUATOR_DISABLED\"")
(defclass open_manipulator_msgs::OpenManipulatorState
  :super ros::object
  :slots (_open_manipulator_moving_state _open_manipulator_actuator_state ))

(defmethod open_manipulator_msgs::OpenManipulatorState
  (:init
   (&key
    ((:open_manipulator_moving_state __open_manipulator_moving_state) "")
    ((:open_manipulator_actuator_state __open_manipulator_actuator_state) "")
    )
   (send-super :init)
   (setq _open_manipulator_moving_state (string __open_manipulator_moving_state))
   (setq _open_manipulator_actuator_state (string __open_manipulator_actuator_state))
   self)
  (:open_manipulator_moving_state
   (&optional __open_manipulator_moving_state)
   (if __open_manipulator_moving_state (setq _open_manipulator_moving_state __open_manipulator_moving_state)) _open_manipulator_moving_state)
  (:open_manipulator_actuator_state
   (&optional __open_manipulator_actuator_state)
   (if __open_manipulator_actuator_state (setq _open_manipulator_actuator_state __open_manipulator_actuator_state)) _open_manipulator_actuator_state)
  (:serialization-length
   ()
   (+
    ;; string _open_manipulator_moving_state
    4 (length _open_manipulator_moving_state)
    ;; string _open_manipulator_actuator_state
    4 (length _open_manipulator_actuator_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _open_manipulator_moving_state
       (write-long (length _open_manipulator_moving_state) s) (princ _open_manipulator_moving_state s)
     ;; string _open_manipulator_actuator_state
       (write-long (length _open_manipulator_actuator_state) s) (princ _open_manipulator_actuator_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _open_manipulator_moving_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _open_manipulator_moving_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _open_manipulator_actuator_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _open_manipulator_actuator_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get open_manipulator_msgs::OpenManipulatorState :md5sum-) "35c95327a0dcb52791892bac52df33e8")
(setf (get open_manipulator_msgs::OpenManipulatorState :datatype-) "open_manipulator_msgs/OpenManipulatorState")
(setf (get open_manipulator_msgs::OpenManipulatorState :definition-)
      "########################################
# CONSTANTS
########################################
string IS_MOVING = \"IS_MOVING\"
string STOPPED = \"STOPPED\"
string ACTUATOR_ENABLED = \"ACTUATOR_ENABLED\"
string ACTUATOR_DISABLED = \"ACTUATOR_DISABLED\"

########################################
# Messages
########################################
string open_manipulator_moving_state
string open_manipulator_actuator_state

")



(provide :open_manipulator_msgs/OpenManipulatorState "35c95327a0dcb52791892bac52df33e8")


