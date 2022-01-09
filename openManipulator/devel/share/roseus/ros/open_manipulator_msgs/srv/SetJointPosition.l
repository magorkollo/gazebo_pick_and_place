;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::SetJointPosition)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'SetJointPosition (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITION")
  (make-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITION"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITIONREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITIONREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITIONRESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETJOINTPOSITIONRESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::SetJointPositionRequest
  :super ros::object
  :slots (_planning_group _joint_position _path_time ))

(defmethod open_manipulator_msgs::SetJointPositionRequest
  (:init
   (&key
    ((:planning_group __planning_group) "")
    ((:joint_position __joint_position) (instance open_manipulator_msgs::JointPosition :init))
    ((:path_time __path_time) 0.0)
    )
   (send-super :init)
   (setq _planning_group (string __planning_group))
   (setq _joint_position __joint_position)
   (setq _path_time (float __path_time))
   self)
  (:planning_group
   (&optional __planning_group)
   (if __planning_group (setq _planning_group __planning_group)) _planning_group)
  (:joint_position
   (&rest __joint_position)
   (if (keywordp (car __joint_position))
       (send* _joint_position __joint_position)
     (progn
       (if __joint_position (setq _joint_position (car __joint_position)))
       _joint_position)))
  (:path_time
   (&optional __path_time)
   (if __path_time (setq _path_time __path_time)) _path_time)
  (:serialization-length
   ()
   (+
    ;; string _planning_group
    4 (length _planning_group)
    ;; open_manipulator_msgs/JointPosition _joint_position
    (send _joint_position :serialization-length)
    ;; float64 _path_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_group
       (write-long (length _planning_group) s) (princ _planning_group s)
     ;; open_manipulator_msgs/JointPosition _joint_position
       (send _joint_position :serialize s)
     ;; float64 _path_time
       (sys::poke _path_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; open_manipulator_msgs/JointPosition _joint_position
     (send _joint_position :deserialize buf ptr-) (incf ptr- (send _joint_position :serialization-length))
   ;; float64 _path_time
     (setq _path_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass open_manipulator_msgs::SetJointPositionResponse
  :super ros::object
  :slots (_is_planned ))

(defmethod open_manipulator_msgs::SetJointPositionResponse
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

(defclass open_manipulator_msgs::SetJointPosition
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::SetJointPosition :md5sum-) "a524a493b17854dbb5e253d2e23c3001")
(setf (get open_manipulator_msgs::SetJointPosition :datatype-) "open_manipulator_msgs/SetJointPosition")
(setf (get open_manipulator_msgs::SetJointPosition :request) open_manipulator_msgs::SetJointPositionRequest)
(setf (get open_manipulator_msgs::SetJointPosition :response) open_manipulator_msgs::SetJointPositionResponse)

(defmethod open_manipulator_msgs::SetJointPositionRequest
  (:response () (instance open_manipulator_msgs::SetJointPositionResponse :init)))

(setf (get open_manipulator_msgs::SetJointPositionRequest :md5sum-) "a524a493b17854dbb5e253d2e23c3001")
(setf (get open_manipulator_msgs::SetJointPositionRequest :datatype-) "open_manipulator_msgs/SetJointPositionRequest")
(setf (get open_manipulator_msgs::SetJointPositionRequest :definition-)
      "string planning_group
JointPosition joint_position
float64 path_time

================================================================================
MSG: open_manipulator_msgs/JointPosition
string[]   joint_name
float64[]  position
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
---
bool is_planned

")

(setf (get open_manipulator_msgs::SetJointPositionResponse :md5sum-) "a524a493b17854dbb5e253d2e23c3001")
(setf (get open_manipulator_msgs::SetJointPositionResponse :datatype-) "open_manipulator_msgs/SetJointPositionResponse")
(setf (get open_manipulator_msgs::SetJointPositionResponse :definition-)
      "string planning_group
JointPosition joint_position
float64 path_time

================================================================================
MSG: open_manipulator_msgs/JointPosition
string[]   joint_name
float64[]  position
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
---
bool is_planned

")



(provide :open_manipulator_msgs/SetJointPosition "a524a493b17854dbb5e253d2e23c3001")


