;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::SetKinematicsPose)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'SetKinematicsPose (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETKINEMATICSPOSERESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::SetKinematicsPoseRequest
  :super ros::object
  :slots (_planning_group _end_effector_name _kinematics_pose _path_time ))

(defmethod open_manipulator_msgs::SetKinematicsPoseRequest
  (:init
   (&key
    ((:planning_group __planning_group) "")
    ((:end_effector_name __end_effector_name) "")
    ((:kinematics_pose __kinematics_pose) (instance open_manipulator_msgs::KinematicsPose :init))
    ((:path_time __path_time) 0.0)
    )
   (send-super :init)
   (setq _planning_group (string __planning_group))
   (setq _end_effector_name (string __end_effector_name))
   (setq _kinematics_pose __kinematics_pose)
   (setq _path_time (float __path_time))
   self)
  (:planning_group
   (&optional __planning_group)
   (if __planning_group (setq _planning_group __planning_group)) _planning_group)
  (:end_effector_name
   (&optional __end_effector_name)
   (if __end_effector_name (setq _end_effector_name __end_effector_name)) _end_effector_name)
  (:kinematics_pose
   (&rest __kinematics_pose)
   (if (keywordp (car __kinematics_pose))
       (send* _kinematics_pose __kinematics_pose)
     (progn
       (if __kinematics_pose (setq _kinematics_pose (car __kinematics_pose)))
       _kinematics_pose)))
  (:path_time
   (&optional __path_time)
   (if __path_time (setq _path_time __path_time)) _path_time)
  (:serialization-length
   ()
   (+
    ;; string _planning_group
    4 (length _planning_group)
    ;; string _end_effector_name
    4 (length _end_effector_name)
    ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
    (send _kinematics_pose :serialization-length)
    ;; float64 _path_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_group
       (write-long (length _planning_group) s) (princ _planning_group s)
     ;; string _end_effector_name
       (write-long (length _end_effector_name) s) (princ _end_effector_name s)
     ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
       (send _kinematics_pose :serialize s)
     ;; float64 _path_time
       (sys::poke _path_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_effector_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_effector_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; open_manipulator_msgs/KinematicsPose _kinematics_pose
     (send _kinematics_pose :deserialize buf ptr-) (incf ptr- (send _kinematics_pose :serialization-length))
   ;; float64 _path_time
     (setq _path_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass open_manipulator_msgs::SetKinematicsPoseResponse
  :super ros::object
  :slots (_is_planned ))

(defmethod open_manipulator_msgs::SetKinematicsPoseResponse
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

(defclass open_manipulator_msgs::SetKinematicsPose
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::SetKinematicsPose :md5sum-) "cce8ad8b6eb29e4b0e3449a09848786e")
(setf (get open_manipulator_msgs::SetKinematicsPose :datatype-) "open_manipulator_msgs/SetKinematicsPose")
(setf (get open_manipulator_msgs::SetKinematicsPose :request) open_manipulator_msgs::SetKinematicsPoseRequest)
(setf (get open_manipulator_msgs::SetKinematicsPose :response) open_manipulator_msgs::SetKinematicsPoseResponse)

(defmethod open_manipulator_msgs::SetKinematicsPoseRequest
  (:response () (instance open_manipulator_msgs::SetKinematicsPoseResponse :init)))

(setf (get open_manipulator_msgs::SetKinematicsPoseRequest :md5sum-) "cce8ad8b6eb29e4b0e3449a09848786e")
(setf (get open_manipulator_msgs::SetKinematicsPoseRequest :datatype-) "open_manipulator_msgs/SetKinematicsPoseRequest")
(setf (get open_manipulator_msgs::SetKinematicsPoseRequest :definition-)
      "string planning_group
string end_effector_name
KinematicsPose kinematics_pose
float64 path_time

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
---
bool is_planned

")

(setf (get open_manipulator_msgs::SetKinematicsPoseResponse :md5sum-) "cce8ad8b6eb29e4b0e3449a09848786e")
(setf (get open_manipulator_msgs::SetKinematicsPoseResponse :datatype-) "open_manipulator_msgs/SetKinematicsPoseResponse")
(setf (get open_manipulator_msgs::SetKinematicsPoseResponse :definition-)
      "string planning_group
string end_effector_name
KinematicsPose kinematics_pose
float64 path_time

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
---
bool is_planned

")



(provide :open_manipulator_msgs/SetKinematicsPose "cce8ad8b6eb29e4b0e3449a09848786e")


