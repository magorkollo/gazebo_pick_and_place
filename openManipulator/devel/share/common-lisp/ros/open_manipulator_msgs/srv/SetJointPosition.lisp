; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude SetJointPosition-request.msg.html

(cl:defclass <SetJointPosition-request> (roslisp-msg-protocol:ros-message)
  ((planning_group
    :reader planning_group
    :initarg :planning_group
    :type cl:string
    :initform "")
   (joint_position
    :reader joint_position
    :initarg :joint_position
    :type open_manipulator_msgs-msg:JointPosition
    :initform (cl:make-instance 'open_manipulator_msgs-msg:JointPosition))
   (path_time
    :reader path_time
    :initarg :path_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetJointPosition-request (<SetJointPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetJointPosition-request> is deprecated: use open_manipulator_msgs-srv:SetJointPosition-request instead.")))

(cl:ensure-generic-function 'planning_group-val :lambda-list '(m))
(cl:defmethod planning_group-val ((m <SetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:planning_group-val is deprecated.  Use open_manipulator_msgs-srv:planning_group instead.")
  (planning_group m))

(cl:ensure-generic-function 'joint_position-val :lambda-list '(m))
(cl:defmethod joint_position-val ((m <SetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:joint_position-val is deprecated.  Use open_manipulator_msgs-srv:joint_position instead.")
  (joint_position m))

(cl:ensure-generic-function 'path_time-val :lambda-list '(m))
(cl:defmethod path_time-val ((m <SetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:path_time-val is deprecated.  Use open_manipulator_msgs-srv:path_time instead.")
  (path_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointPosition-request>) ostream)
  "Serializes a message object of type '<SetJointPosition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_group))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_position) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointPosition-request>) istream)
  "Deserializes a message object of type '<SetJointPosition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_position) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointPosition-request>)))
  "Returns string type for a service object of type '<SetJointPosition-request>"
  "open_manipulator_msgs/SetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointPosition-request)))
  "Returns string type for a service object of type 'SetJointPosition-request"
  "open_manipulator_msgs/SetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointPosition-request>)))
  "Returns md5sum for a message object of type '<SetJointPosition-request>"
  "a524a493b17854dbb5e253d2e23c3001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointPosition-request)))
  "Returns md5sum for a message object of type 'SetJointPosition-request"
  "a524a493b17854dbb5e253d2e23c3001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointPosition-request>)))
  "Returns full string definition for message of type '<SetJointPosition-request>"
  (cl:format cl:nil "string planning_group~%JointPosition joint_position~%float64 path_time~%~%================================================================================~%MSG: open_manipulator_msgs/JointPosition~%string[]   joint_name~%float64[]  position~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointPosition-request)))
  "Returns full string definition for message of type 'SetJointPosition-request"
  (cl:format cl:nil "string planning_group~%JointPosition joint_position~%float64 path_time~%~%================================================================================~%MSG: open_manipulator_msgs/JointPosition~%string[]   joint_name~%float64[]  position~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointPosition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_group))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointPosition-request
    (cl:cons ':planning_group (planning_group msg))
    (cl:cons ':joint_position (joint_position msg))
    (cl:cons ':path_time (path_time msg))
))
;//! \htmlinclude SetJointPosition-response.msg.html

(cl:defclass <SetJointPosition-response> (roslisp-msg-protocol:ros-message)
  ((is_planned
    :reader is_planned
    :initarg :is_planned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJointPosition-response (<SetJointPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetJointPosition-response> is deprecated: use open_manipulator_msgs-srv:SetJointPosition-response instead.")))

(cl:ensure-generic-function 'is_planned-val :lambda-list '(m))
(cl:defmethod is_planned-val ((m <SetJointPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:is_planned-val is deprecated.  Use open_manipulator_msgs-srv:is_planned instead.")
  (is_planned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointPosition-response>) ostream)
  "Serializes a message object of type '<SetJointPosition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_planned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointPosition-response>) istream)
  "Deserializes a message object of type '<SetJointPosition-response>"
    (cl:setf (cl:slot-value msg 'is_planned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointPosition-response>)))
  "Returns string type for a service object of type '<SetJointPosition-response>"
  "open_manipulator_msgs/SetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointPosition-response)))
  "Returns string type for a service object of type 'SetJointPosition-response"
  "open_manipulator_msgs/SetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointPosition-response>)))
  "Returns md5sum for a message object of type '<SetJointPosition-response>"
  "a524a493b17854dbb5e253d2e23c3001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointPosition-response)))
  "Returns md5sum for a message object of type 'SetJointPosition-response"
  "a524a493b17854dbb5e253d2e23c3001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointPosition-response>)))
  "Returns full string definition for message of type '<SetJointPosition-response>"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointPosition-response)))
  "Returns full string definition for message of type 'SetJointPosition-response"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointPosition-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointPosition-response
    (cl:cons ':is_planned (is_planned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointPosition)))
  'SetJointPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointPosition)))
  'SetJointPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointPosition)))
  "Returns string type for a service object of type '<SetJointPosition>"
  "open_manipulator_msgs/SetJointPosition")