;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::SetActuatorState)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'SetActuatorState (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETACTUATORSTATERESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::SetActuatorStateRequest
  :super ros::object
  :slots (_set_actuator_state ))

(defmethod open_manipulator_msgs::SetActuatorStateRequest
  (:init
   (&key
    ((:set_actuator_state __set_actuator_state) nil)
    )
   (send-super :init)
   (setq _set_actuator_state __set_actuator_state)
   self)
  (:set_actuator_state
   (&optional __set_actuator_state)
   (if __set_actuator_state (setq _set_actuator_state __set_actuator_state)) _set_actuator_state)
  (:serialization-length
   ()
   (+
    ;; bool _set_actuator_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_actuator_state
       (if _set_actuator_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_actuator_state
     (setq _set_actuator_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass open_manipulator_msgs::SetActuatorStateResponse
  :super ros::object
  :slots (_is_planned ))

(defmethod open_manipulator_msgs::SetActuatorStateResponse
  (:init
   (&key
    ((:is_planned __is_planned) nil)
    )
   (send-super :init)
   (setq _is_planned __is_planned)
   self)
  (:is_planned
   (&optional __is_planned)
   (if __is_planned (setq _is_planned __is_planned)) _is_planned)
  (:serialization-length
   ()
   (+
    ;; bool _is_planned
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_planned
       (if _is_planned (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_planned
     (setq _is_planned (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass open_manipulator_msgs::SetActuatorState
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::SetActuatorState :md5sum-) "ad1d166d833769046644494dd3607bd2")
(setf (get open_manipulator_msgs::SetActuatorState :datatype-) "open_manipulator_msgs/SetActuatorState")
(setf (get open_manipulator_msgs::SetActuatorState :request) open_manipulator_msgs::SetActuatorStateRequest)
(setf (get open_manipulator_msgs::SetActuatorState :response) open_manipulator_msgs::SetActuatorStateResponse)

(defmethod open_manipulator_msgs::SetActuatorStateRequest
  (:response () (instance open_manipulator_msgs::SetActuatorStateResponse :init)))

(setf (get open_manipulator_msgs::SetActuatorStateRequest :md5sum-) "ad1d166d833769046644494dd3607bd2")
(setf (get open_manipulator_msgs::SetActuatorStateRequest :datatype-) "open_manipulator_msgs/SetActuatorStateRequest")
(setf (get open_manipulator_msgs::SetActuatorStateRequest :definition-)
      "bool set_actuator_state
---
bool is_planned

")

(setf (get open_manipulator_msgs::SetActuatorStateResponse :md5sum-) "ad1d166d833769046644494dd3607bd2")
(setf (get open_manipulator_msgs::SetActuatorStateResponse :datatype-) "open_manipulator_msgs/SetActuatorStateResponse")
(setf (get open_manipulator_msgs::SetActuatorStateResponse :definition-)
      "bool set_actuator_state
---
bool is_planned

")



(provide :open_manipulator_msgs/SetActuatorState "ad1d166d833769046644494dd3607bd2")


