; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude SetKinematicsPose-request.msg.html

(cl:defclass <SetKinematicsPose-request> (roslisp-msg-protocol:ros-message)
  ((planning_group
    :reader planning_group
    :initarg :planning_group
    :type cl:string
    :initform "")
   (end_effector_name
    :reader end_effector_name
    :initarg :end_effector_name
    :type cl:string
    :initform "")
   (kinematics_pose
    :reader kinematics_pose
    :initarg :kinematics_pose
    :type open_manipulator_msgs-msg:KinematicsPose
    :initform (cl:make-instance 'open_manipulator_msgs-msg:KinematicsPose))
   (path_time
    :reader path_time
    :initarg :path_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetKinematicsPose-request (<SetKinematicsPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKinematicsPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKinematicsPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetKinematicsPose-request> is deprecated: use open_manipulator_msgs-srv:SetKinematicsPose-request instead.")))

(cl:ensure-generic-function 'planning_group-val :lambda-list '(m))
(cl:defmethod planning_group-val ((m <SetKinematicsPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:planning_group-val is deprecated.  Use open_manipulator_msgs-srv:planning_group instead.")
  (planning_group m))

(cl:ensure-generic-function 'end_effector_name-val :lambda-list '(m))
(cl:defmethod end_effector_name-val ((m <SetKinematicsPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:end_effector_name-val is deprecated.  Use open_manipulator_msgs-srv:end_effector_name instead.")
  (end_effector_name m))

(cl:ensure-generic-function 'kinematics_pose-val :lambda-list '(m))
(cl:defmethod kinematics_pose-val ((m <SetKinematicsPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:kinematics_pose-val is deprecated.  Use open_manipulator_msgs-srv:kinematics_pose instead.")
  (kinematics_pose m))

(cl:ensure-generic-function 'path_time-val :lambda-list '(m))
(cl:defmethod path_time-val ((m <SetKinematicsPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:path_time-val is deprecated.  Use open_manipulator_msgs-srv:path_time instead.")
  (path_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKinematicsPose-request>) ostream)
  "Serializes a message object of type '<SetKinematicsPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_effector_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_effector_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'kinematics_pose) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKinematicsPose-request>) istream)
  "Deserializes a message object of type '<SetKinematicsPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_effector_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_effector_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'kinematics_pose) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKinematicsPose-request>)))
  "Returns string type for a service object of type '<SetKinematicsPose-request>"
  "open_manipulator_msgs/SetKinematicsPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKinematicsPose-request)))
  "Returns string type for a service object of type 'SetKinematicsPose-request"
  "open_manipulator_msgs/SetKinematicsPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKinematicsPose-request>)))
  "Returns md5sum for a message object of type '<SetKinematicsPose-request>"
  "cce8ad8b6eb29e4b0e3449a09848786e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKinematicsPose-request)))
  "Returns md5sum for a message object of type 'SetKinematicsPose-request"
  "cce8ad8b6eb29e4b0e3449a09848786e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKinematicsPose-request>)))
  "Returns full string definition for message of type '<SetKinematicsPose-request>"
  (cl:format cl:nil "string planning_group~%string end_effector_name~%KinematicsPose kinematics_pose~%float64 path_time~%~%================================================================================~%MSG: open_manipulator_msgs/KinematicsPose~%geometry_msgs/Pose  pose~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%float64    tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKinematicsPose-request)))
  "Returns full string definition for message of type 'SetKinematicsPose-request"
  (cl:format cl:nil "string planning_group~%string end_effector_name~%KinematicsPose kinematics_pose~%float64 path_time~%~%================================================================================~%MSG: open_manipulator_msgs/KinematicsPose~%geometry_msgs/Pose  pose~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%float64    tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKinematicsPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_group))
     4 (cl:length (cl:slot-value msg 'end_effector_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'kinematics_pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKinematicsPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKinematicsPose-request
    (cl:cons ':planning_group (planning_group msg))
    (cl:cons ':end_effector_name (end_effector_name msg))
    (cl:cons ':kinematics_pose (kinematics_pose msg))
    (cl:cons ':path_time (path_time msg))
))
;//! \htmlinclude SetKinematicsPose-response.msg.html

(cl:defclass <SetKinematicsPose-response> (roslisp-msg-protocol:ros-message)
  ((is_planned
    :reader is_planned
    :initarg :is_planned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetKinematicsPose-response (<SetKinematicsPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetKinematicsPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetKinematicsPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetKinematicsPose-response> is deprecated: use open_manipulator_msgs-srv:SetKinematicsPose-response instead.")))

(cl:ensure-generic-function 'is_planned-val :lambda-list '(m))
(cl:defmethod is_planned-val ((m <SetKinematicsPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:is_planned-val is deprecated.  Use open_manipulator_msgs-srv:is_planned instead.")
  (is_planned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetKinematicsPose-response>) ostream)
  "Serializes a message object of type '<SetKinematicsPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_planned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetKinematicsPose-response>) istream)
  "Deserializes a message object of type '<SetKinematicsPose-response>"
    (cl:setf (cl:slot-value msg 'is_planned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetKinematicsPose-response>)))
  "Returns string type for a service object of type '<SetKinematicsPose-response>"
  "open_manipulator_msgs/SetKinematicsPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKinematicsPose-response)))
  "Returns string type for a service object of type 'SetKinematicsPose-response"
  "open_manipulator_msgs/SetKinematicsPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetKinematicsPose-response>)))
  "Returns md5sum for a message object of type '<SetKinematicsPose-response>"
  "cce8ad8b6eb29e4b0e3449a09848786e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetKinematicsPose-response)))
  "Returns md5sum for a message object of type 'SetKinematicsPose-response"
  "cce8ad8b6eb29e4b0e3449a09848786e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetKinematicsPose-response>)))
  "Returns full string definition for message of type '<SetKinematicsPose-response>"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetKinematicsPose-response)))
  "Returns full string definition for message of type 'SetKinematicsPose-response"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetKinematicsPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetKinematicsPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetKinematicsPose-response
    (cl:cons ':is_planned (is_planned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetKinematicsPose)))
  'SetKinematicsPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetKinematicsPose)))
  'SetKinematicsPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetKinematicsPose)))
  "Returns string type for a service object of type '<SetKinematicsPose>"
  "open_manipulator_msgs/SetKinematicsPose")