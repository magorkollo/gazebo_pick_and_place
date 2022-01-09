; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude SetDrawingTrajectory-request.msg.html

(cl:defclass <SetDrawingTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((end_effector_name
    :reader end_effector_name
    :initarg :end_effector_name
    :type cl:string
    :initform "")
   (drawing_trajectory_name
    :reader drawing_trajectory_name
    :initarg :drawing_trajectory_name
    :type cl:string
    :initform "")
   (param
    :reader param
    :initarg :param
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (path_time
    :reader path_time
    :initarg :path_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetDrawingTrajectory-request (<SetDrawingTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDrawingTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDrawingTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetDrawingTrajectory-request> is deprecated: use open_manipulator_msgs-srv:SetDrawingTrajectory-request instead.")))

(cl:ensure-generic-function 'end_effector_name-val :lambda-list '(m))
(cl:defmethod end_effector_name-val ((m <SetDrawingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:end_effector_name-val is deprecated.  Use open_manipulator_msgs-srv:end_effector_name instead.")
  (end_effector_name m))

(cl:ensure-generic-function 'drawing_trajectory_name-val :lambda-list '(m))
(cl:defmethod drawing_trajectory_name-val ((m <SetDrawingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:drawing_trajectory_name-val is deprecated.  Use open_manipulator_msgs-srv:drawing_trajectory_name instead.")
  (drawing_trajectory_name m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <SetDrawingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:param-val is deprecated.  Use open_manipulator_msgs-srv:param instead.")
  (param m))

(cl:ensure-generic-function 'path_time-val :lambda-list '(m))
(cl:defmethod path_time-val ((m <SetDrawingTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:path_time-val is deprecated.  Use open_manipulator_msgs-srv:path_time instead.")
  (path_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDrawingTrajectory-request>) ostream)
  "Serializes a message object of type '<SetDrawingTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_effector_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_effector_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'drawing_trajectory_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'drawing_trajectory_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'param))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDrawingTrajectory-request>) istream)
  "Deserializes a message object of type '<SetDrawingTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_effector_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_effector_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drawing_trajectory_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'drawing_trajectory_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDrawingTrajectory-request>)))
  "Returns string type for a service object of type '<SetDrawingTrajectory-request>"
  "open_manipulator_msgs/SetDrawingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrawingTrajectory-request)))
  "Returns string type for a service object of type 'SetDrawingTrajectory-request"
  "open_manipulator_msgs/SetDrawingTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDrawingTrajectory-request>)))
  "Returns md5sum for a message object of type '<SetDrawingTrajectory-request>"
  "89315cba5d7bbfff59192e9c2e5907e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDrawingTrajectory-request)))
  "Returns md5sum for a message object of type 'SetDrawingTrajectory-request"
  "89315cba5d7bbfff59192e9c2e5907e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDrawingTrajectory-request>)))
  "Returns full string definition for message of type '<SetDrawingTrajectory-request>"
  (cl:format cl:nil "string end_effector_name~%string drawing_trajectory_name~%float64[] param~%float64 path_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDrawingTrajectory-request)))
  "Returns full string definition for message of type 'SetDrawingTrajectory-request"
  (cl:format cl:nil "string end_effector_name~%string drawing_trajectory_name~%float64[] param~%float64 path_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDrawingTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'end_effector_name))
     4 (cl:length (cl:slot-value msg 'drawing_trajectory_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDrawingTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDrawingTrajectory-request
    (cl:cons ':end_effector_name (end_effector_name msg))
    (cl:cons ':drawing_trajectory_name (drawing_trajectory_name msg))
    (cl:cons ':param (param msg))
    (cl:cons ':path_time (path_time msg))
))
;//! \htmlinclude SetDrawingTrajectory-response.msg.html

(cl:defclass <SetDrawingTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((is_planned
    :reader is_planned
    :initarg :is_planned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDrawingTrajectory-response (<SetDrawingTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDrawingTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDrawingTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetDrawingTrajectory-response> is deprecated: use open_manipulator_msgs-srv:SetDrawingTrajectory-response instead.")))

(cl:ensure-generic-function 'is_planned-val :lambda-list '(m))
(cl:defmethod is_planned-val ((m <SetDrawingTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:is_planned-val is deprecated.  Use open_manipulator_msgs-srv:is_planned instead.")
  (is_planned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDrawingTrajectory-response>) ostream)
  "Serializes a message object of type '<SetDrawingTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_planned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDrawingTrajectory-response>) istream)
  "Deserializes a message object of type '<SetDrawingTrajectory-response>"
    (cl:setf (cl:slot-value msg 'is_planned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDrawingTrajectory-response>)))
  "Returns string type for a service object of type '<SetDrawingTrajectory-response>"
  "open_manipulator_msgs/SetDrawingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrawingTrajectory-response)))
  "Returns string type for a service object of type 'SetDrawingTrajectory-response"
  "open_manipulator_msgs/SetDrawingTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDrawingTrajectory-response>)))
  "Returns md5sum for a message object of type '<SetDrawingTrajectory-response>"
  "89315cba5d7bbfff59192e9c2e5907e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDrawingTrajectory-response)))
  "Returns md5sum for a message object of type 'SetDrawingTrajectory-response"
  "89315cba5d7bbfff59192e9c2e5907e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDrawingTrajectory-response>)))
  "Returns full string definition for message of type '<SetDrawingTrajectory-response>"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDrawingTrajectory-response)))
  "Returns full string definition for message of type 'SetDrawingTrajectory-response"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDrawingTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDrawingTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDrawingTrajectory-response
    (cl:cons ':is_planned (is_planned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDrawingTrajectory)))
  'SetDrawingTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDrawingTrajectory)))
  'SetDrawingTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrawingTrajectory)))
  "Returns string type for a service object of type '<SetDrawingTrajectory>"
  "open_manipulator_msgs/SetDrawingTrajectory")