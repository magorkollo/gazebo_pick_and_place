;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::SetDrawingTrajectory)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'SetDrawingTrajectory (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORY")
  (make-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORY"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORYREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORYREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORYRESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::SETDRAWINGTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::SetDrawingTrajectoryRequest
  :super ros::object
  :slots (_end_effector_name _drawing_trajectory_name _param _path_time ))

(defmethod open_manipulator_msgs::SetDrawingTrajectoryRequest
  (:init
   (&key
    ((:end_effector_name __end_effector_name) "")
    ((:drawing_trajectory_name __drawing_trajectory_name) "")
    ((:param __param) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:path_time __path_time) 0.0)
    )
   (send-super :init)
   (setq _end_effector_name (string __end_effector_name))
   (setq _drawing_trajectory_name (string __drawing_trajectory_name))
   (setq _param __param)
   (setq _path_time (float __path_time))
   self)
  (:end_effector_name
   (&optional __end_effector_name)
   (if __end_effector_name (setq _end_effector_name __end_effector_name)) _end_effector_name)
  (:drawing_trajectory_name
   (&optional __drawing_trajectory_name)
   (if __drawing_trajectory_name (setq _drawing_trajectory_name __drawing_trajectory_name)) _drawing_trajectory_name)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:path_time
   (&optional __path_time)
   (if __path_time (setq _path_time __path_time)) _path_time)
  (:serialization-length
   ()
   (+
    ;; string _end_effector_name
    4 (length _end_effector_name)
    ;; string _drawing_trajectory_name
    4 (length _drawing_trajectory_name)
    ;; float64[] _param
    (* 8    (length _param)) 4
    ;; float64 _path_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _end_effector_name
       (write-long (length _end_effector_name) s) (princ _end_effector_name s)
     ;; string _drawing_trajectory_name
       (write-long (length _drawing_trajectory_name) s) (princ _drawing_trajectory_name s)
     ;; float64[] _param
     (write-long (length _param) s)
     (dotimes (i (length _param))
       (sys::poke (elt _param i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _path_time
       (sys::poke _path_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _end_effector_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_effector_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _drawing_trajectory_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _drawing_trajectory_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _param i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _path_time
     (setq _path_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass open_manipulator_msgs::SetDrawingTrajectoryResponse
  :super ros::object
  :slots (_is_planned ))

(defmethod open_manipulator_msgs::SetDrawingTrajectoryResponse
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

(defclass open_manipulator_msgs::SetDrawingTrajectory
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::SetDrawingTrajectory :md5sum-) "89315cba5d7bbfff59192e9c2e5907e7")
(setf (get open_manipulator_msgs::SetDrawingTrajectory :datatype-) "open_manipulator_msgs/SetDrawingTrajectory")
(setf (get open_manipulator_msgs::SetDrawingTrajectory :request) open_manipulator_msgs::SetDrawingTrajectoryRequest)
(setf (get open_manipulator_msgs::SetDrawingTrajectory :response) open_manipulator_msgs::SetDrawingTrajectoryResponse)

(defmethod open_manipulator_msgs::SetDrawingTrajectoryRequest
  (:response () (instance open_manipulator_msgs::SetDrawingTrajectoryResponse :init)))

(setf (get open_manipulator_msgs::SetDrawingTrajectoryRequest :md5sum-) "89315cba5d7bbfff59192e9c2e5907e7")
(setf (get open_manipulator_msgs::SetDrawingTrajectoryRequest :datatype-) "open_manipulator_msgs/SetDrawingTrajectoryRequest")
(setf (get open_manipulator_msgs::SetDrawingTrajectoryRequest :definition-)
      "string end_effector_name
string drawing_trajectory_name
float64[] param
float64 path_time
---
bool is_planned

")

(setf (get open_manipulator_msgs::SetDrawingTrajectoryResponse :md5sum-) "89315cba5d7bbfff59192e9c2e5907e7")
(setf (get open_manipulator_msgs::SetDrawingTrajectoryResponse :datatype-) "open_manipulator_msgs/SetDrawingTrajectoryResponse")
(setf (get open_manipulator_msgs::SetDrawingTrajectoryResponse :definition-)
      "string end_effector_name
string drawing_trajectory_name
float64[] param
float64 path_time
---
bool is_planned

")



(provide :open_manipulator_msgs/SetDrawingTrajectory "89315cba5d7bbfff59192e9c2e5907e7")


