;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::GetKinematicsPose)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'GetKinematicsPose (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSE")
  (make-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::GETKINEMATICSPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass open_manipulator_msgs::GetKinematicsPoseRequest
  :super ros::object
  :slots (_planning_group _end_effector_name ))

(defmethod open_manipulator_msgs::GetKinematicsPoseRequest
  (:init
   (&key
    ((:planning_group __planning_group) "")
    ((:end_effector_name __end_effector_name) "")
    )
   (send-super :init)
   (setq _planning_group (string __planning_group))
   (setq _end_effector_name (string __end_effector_name))
   self)
  (:planning_group
   (&optional __planning_group)
   (if __planning_group (setq _planning_group __planning_group)) _planning_group)
  (:end_effector_name
   (&optional __end_effector_name)
   (if __end_effector_name (setq _end_effector_name __end_effector_name)) _end_effector_name)
  (:serialization-length
   ()
   (+
    ;; string _planning_group
    4 (length _planning_group)
    ;; string _end_effector_name
    4 (length _end_effector_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_group
       (write-long (length _planning_group) s) (princ _planning_group s)
     ;; string _end_effector_name
       (write-long (length _end_effector_name) s) (princ _end_effector_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_effector_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_effector_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass open_manipulator_msgs::GetKinematicsPoseResponse
  :super ros::object
  :slots (_header _kinematics_pose ))

(defmethod open_manipulator_msgs::GetKinematicsPoseResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:kinematics_pose __kinematics_pose) (instance open_manipulator_msgs::KinematicsPose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _kinematics_pose __kinematics_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:kinematics_pose
   (&rest __kinematics_pose)
   (if (keywordp (car __kinematics_pose))
       (send* _kinematics_pose __kinematics_pose)
     (progn
       (if __kinematics_pose (setq _kinematics_pose (car __kinematics_pose)))
       _kinematics_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
    (send _kinematics_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
       (send _kinematics_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
     (send _kinematics_pose :deserialize buf ptr-) (incf ptr- (send _kinematics_pose :serialization-length))
   ;;
   self)
  )

(defclass open_manipulator_msgs::GetKinematicsPose
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::GetKinematicsPose :md5sum-) "2fe60b9f4a4b683c14e60a854bb9e0e1")
(setf (get open_manipulator_msgs::GetKinematicsPose :datatype-) "open_manipulator_msgs/GetKinematicsPose")
(setf (get open_manipulator_msgs::GetKinematicsPose :request) open_manipulator_msgs::GetKinematicsPoseRequest)
(setf (get open_manipulator_msgs::GetKinematicsPose :response) open_manipulator_msgs::GetKinematicsPoseResponse)

(defmethod open_manipulator_msgs::GetKinematicsPoseRequest
  (:response () (instance open_manipulator_msgs::GetKinematicsPoseResponse :init)))

(setf (get open_manipulator_msgs::GetKinematicsPoseRequest :md5sum-) "2fe60b9f4a4b683c14e60a854bb9e0e1")
(setf (get open_manipulator_msgs::GetKinematicsPoseRequest :datatype-) "open_manipulator_msgs/GetKinematicsPoseRequest")
(setf (get open_manipulator_msgs::GetKinematicsPoseRequest :definition-)
      "string planning_group
string end_effector_name
---
Header header
KinematicsPose kinematics_pose


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: open_manipulator_msgs/KinematicsPose
geometry_msgs/Pose  pose
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
float64    tolerance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get open_manipulator_msgs::GetKinematicsPoseResponse :md5sum-) "2fe60b9f4a4b683c14e60a854bb9e0e1")
(setf (get open_manipulator_msgs::GetKinematicsPoseResponse :datatype-) "open_manipulator_msgs/GetKinematicsPoseResponse")
(setf (get open_manipulator_msgs::GetKinematicsPoseResponse :definition-)
      "string planning_group
string end_effector_name
---
Header header
KinematicsPose kinematics_pose


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: open_manipulator_msgs/KinematicsPose
geometry_msgs/Pose  pose
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
float64    tolerance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :open_manipulator_msgs/GetKinematicsPose "2fe60b9f4a4b683c14e60a854bb9e0e1")


