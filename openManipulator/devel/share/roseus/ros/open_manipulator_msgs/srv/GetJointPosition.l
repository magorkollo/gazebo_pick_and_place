;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::GetJointPosition)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'GetJointPosition (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITION")
  (make-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITION"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITIONREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITIONREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITIONRESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::GETJOINTPOSITIONRESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::GetJointPositionRequest
  :super ros::object
  :slots (_planning_group ))

(defmethod open_manipulator_msgs::GetJointPositionRequest
  (:init
   (&key
    ((:planning_group __planning_group) "")
    )
   (send-super :init)
   (setq _planning_group (string __planning_group))
   self)
  (:planning_group
   (&optional __planning_group)
   (if __planning_group (setq _planning_group __planning_group)) _planning_group)
  (:serialization-length
   ()
   (+
    ;; string _planning_group
    4 (length _planning_group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_group
       (write-long (length _planning_group) s) (princ _planning_group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass open_manipulator_msgs::GetJointPositionResponse
  :super ros::object
  :slots (_joint_position ))

(defmethod open_manipulator_msgs::GetJointPositionResponse
  (:init
   (&key
    ((:joint_position __joint_position) (instance open_manipulator_msgs::JointPosition :init))
    )
   (send-super :init)
   (setq _joint_position __joint_position)
   self)
  (:joint_position
   (&rest __joint_position)
   (if (keywordp (car __joint_position))
       (send* _joint_position __joint_position)
     (progn
       (if __joint_position (setq _joint_position (car __joint_position)))
       _joint_position)))
  (:serialization-length
   ()
   (+
    ;; open_manipulator_msgs/JointPosition _joint_position
    (send _joint_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; open_manipulator_msgs/JointPosition _joint_position
       (send _joint_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; open_manipulator_msgs/JointPosition _joint_position
     (send _joint_position :deserialize buf ptr-) (incf ptr- (send _joint_position :serialization-length))
   ;;
   self)
  )

(defclass open_manipulator_msgs::GetJointPosition
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::GetJointPosition :md5sum-) "8d1ed85590e532631c111b78538ac282")
(setf (get open_manipulator_msgs::GetJointPosition :datatype-) "open_manipulator_msgs/GetJointPosition")
(setf (get open_manipulator_msgs::GetJointPosition :request) open_manipulator_msgs::GetJointPositionRequest)
(setf (get open_manipulator_msgs::GetJointPosition :response) open_manipulator_msgs::GetJointPositionResponse)

(defmethod open_manipulator_msgs::GetJointPositionRequest
  (:response () (instance open_manipulator_msgs::GetJointPositionResponse :init)))

(setf (get open_manipulator_msgs::GetJointPositionRequest :md5sum-) "8d1ed85590e532631c111b78538ac282")
(setf (get open_manipulator_msgs::GetJointPositionRequest :datatype-) "open_manipulator_msgs/GetJointPositionRequest")
(setf (get open_manipulator_msgs::GetJointPositionRequest :definition-)
      "string planning_group
---
JointPosition joint_position



================================================================================
MSG: open_manipulator_msgs/JointPosition
string[]   joint_name
float64[]  position
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
")

(setf (get open_manipulator_msgs::GetJointPositionResponse :md5sum-) "8d1ed85590e532631c111b78538ac282")
(setf (get open_manipulator_msgs::GetJointPositionResponse :datatype-) "open_manipulator_msgs/GetJointPositionResponse")
(setf (get open_manipulator_msgs::GetJointPositionResponse :definition-)
      "string planning_group
---
JointPosition joint_position



================================================================================
MSG: open_manipulator_msgs/JointPosition
string[]   joint_name
float64[]  position
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
")



(provide :open_manipulator_msgs/GetJointPosition "8d1ed85590e532631c111b78538ac282")


