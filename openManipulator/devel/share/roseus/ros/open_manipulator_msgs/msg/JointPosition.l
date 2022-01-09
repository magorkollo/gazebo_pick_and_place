;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::JointPosition)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'JointPosition (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::JOINTPOSITION")
  (make-package "OPEN_MANIPULATOR_MSGS::JOINTPOSITION"))

(in-package "ROS")
;;//! \htmlinclude JointPosition.msg.html


(defclass open_manipulator_msgs::JointPosition
  :super ros::object
  :slots (_joint_name _position _max_accelerations_scaling_factor _max_velocity_scaling_factor ))

(defmethod open_manipulator_msgs::JointPosition
  (:init
   (&key
    ((:joint_name __joint_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_accelerations_scaling_factor __max_accelerations_scaling_factor) 0.0)
    ((:max_velocity_scaling_factor __max_velocity_scaling_factor) 0.0)
    )
   (send-super :init)
   (setq _joint_name __joint_name)
   (setq _position __position)
   (setq _max_accelerations_scaling_factor (float __max_accelerations_scaling_factor))
   (setq _max_velocity_scaling_factor (float __max_velocity_scaling_factor))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:max_accelerations_scaling_factor
   (&optional __max_accelerations_scaling_factor)
   (if __max_accelerations_scaling_factor (setq _max_accelerations_scaling_factor __max_accelerations_scaling_factor)) _max_accelerations_scaling_factor)
  (:max_velocity_scaling_factor
   (&optional __max_velocity_scaling_factor)
   (if __max_velocity_scaling_factor (setq _max_velocity_scaling_factor __max_velocity_scaling_factor)) _max_velocity_scaling_factor)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_name)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64 _max_accelerations_scaling_factor
    8
    ;; float64 _max_velocity_scaling_factor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_name
     (write-long (length _joint_name) s)
     (dolist (elem _joint_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _max_accelerations_scaling_factor
       (sys::poke _max_accelerations_scaling_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_velocity_scaling_factor
       (sys::poke _max_velocity_scaling_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _max_accelerations_scaling_factor
     (setq _max_accelerations_scaling_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_velocity_scaling_factor
     (setq _max_velocity_scaling_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get open_manipulator_msgs::JointPosition :md5sum-) "b6b6bc3417b5da955b766eb41a6c1698")
(setf (get open_manipulator_msgs::JointPosition :datatype-) "open_manipulator_msgs/JointPosition")
(setf (get open_manipulator_msgs::JointPosition :definition-)
      "string[]   joint_name
float64[]  position
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor

")



(provide :open_manipulator_msgs/JointPosition "b6b6bc3417b5da955b766eb41a6c1698")


