;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::KinematicsPose)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'KinematicsPose (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::KINEMATICSPOSE")
  (make-package "OPEN_MANIPULATOR_MSGS::KINEMATICSPOSE"))

(in-package "ROS")
;;//! \htmlinclude KinematicsPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass open_manipulator_msgs::KinematicsPose
  :super ros::object
  :slots (_pose _max_accelerations_scaling_factor _max_velocity_scaling_factor _tolerance ))

(defmethod open_manipulator_msgs::KinematicsPose
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:max_accelerations_scaling_factor __max_accelerations_scaling_factor) 0.0)
    ((:max_velocity_scaling_factor __max_velocity_scaling_factor) 0.0)
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _max_accelerations_scaling_factor (float __max_accelerations_scaling_factor))
   (setq _max_velocity_scaling_factor (float __max_velocity_scaling_factor))
   (setq _tolerance (float __tolerance))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:max_accelerations_scaling_factor
   (&optional __max_accelerations_scaling_factor)
   (if __max_accelerations_scaling_factor (setq _max_accelerations_scaling_factor __max_accelerations_scaling_factor)) _max_accelerations_scaling_factor)
  (:max_velocity_scaling_factor
   (&optional __max_velocity_scaling_factor)
   (if __max_velocity_scaling_factor (setq _max_velocity_scaling_factor __max_velocity_scaling_factor)) _max_velocity_scaling_factor)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _max_accelerations_scaling_factor
    8
    ;; float64 _max_velocity_scaling_factor
    8
    ;; float64 _tolerance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _max_accelerations_scaling_factor
       (sys::poke _max_accelerations_scaling_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_velocity_scaling_factor
       (sys::poke _max_velocity_scaling_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _max_accelerations_scaling_factor
     (setq _max_accelerations_scaling_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_velocity_scaling_factor
     (setq _max_velocity_scaling_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tolerance
     (setq _tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get open_manipulator_msgs::KinematicsPose :md5sum-) "bad8d5def2efabb0336490f8e9f6f2e2")
(setf (get open_manipulator_msgs::KinematicsPose :datatype-) "open_manipulator_msgs/KinematicsPose")
(setf (get open_manipulator_msgs::KinematicsPose :definition-)
      "geometry_msgs/Pose  pose
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



(provide :open_manipulator_msgs/KinematicsPose "bad8d5def2efabb0336490f8e9f6f2e2")


