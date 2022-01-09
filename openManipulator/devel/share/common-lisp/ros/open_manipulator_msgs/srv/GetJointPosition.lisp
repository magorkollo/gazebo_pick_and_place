; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude GetJointPosition-request.msg.html

(cl:defclass <GetJointPosition-request> (roslisp-msg-protocol:ros-message)
  ((planning_group
    :reader planning_group
    :initarg :planning_group
    :type cl:string
    :initform ""))
)

(cl:defclass GetJointPosition-request (<GetJointPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<GetJointPosition-request> is deprecated: use open_manipulator_msgs-srv:GetJointPosition-request instead.")))

(cl:ensure-generic-function 'planning_group-val :lambda-list '(m))
(cl:defmethod planning_group-val ((m <GetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:planning_group-val is deprecated.  Use open_manipulator_msgs-srv:planning_group instead.")
  (planning_group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointPosition-request>) ostream)
  "Serializes a message object of type '<GetJointPosition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointPosition-request>) istream)
  "Deserializes a message object of type '<GetJointPosition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointPosition-request>)))
  "Returns string type for a service object of type '<GetJointPosition-request>"
  "open_manipulator_msgs/GetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointPosition-request)))
  "Returns string type for a service object of type 'GetJointPosition-request"
  "open_manipulator_msgs/GetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointPosition-request>)))
  "Returns md5sum for a message object of type '<GetJointPosition-request>"
  "8d1ed85590e532631c111b78538ac282")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointPosition-request)))
  "Returns md5sum for a message object of type 'GetJointPosition-request"
  "8d1ed85590e532631c111b78538ac282")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointPosition-request>)))
  "Returns full string definition for message of type '<GetJointPosition-request>"
  (cl:format cl:nil "string planning_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointPosition-request)))
  "Returns full string definition for message of type 'GetJointPosition-request"
  (cl:format cl:nil "string planning_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointPosition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointPosition-request
    (cl:cons ':planning_group (planning_group msg))
))
;//! \htmlinclude GetJointPosition-response.msg.html

(cl:defclass <GetJointPosition-response> (roslisp-msg-protocol:ros-message)
  ((joint_position
    :reader joint_position
    :initarg :joint_position
    :type open_manipulator_msgs-msg:JointPosition
    :initform (cl:make-instance 'open_manipulator_msgs-msg:JointPosition)))
)

(cl:defclass GetJointPosition-response (<GetJointPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<GetJointPosition-response> is deprecated: use open_manipulator_msgs-srv:GetJointPosition-response instead.")))

(cl:ensure-generic-function 'joint_position-val :lambda-list '(m))
(cl:defmethod joint_position-val ((m <GetJointPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:joint_position-val is deprecated.  Use open_manipulator_msgs-srv:joint_position instead.")
  (joint_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointPosition-response>) ostream)
  "Serializes a message object of type '<GetJointPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointPosition-response>) istream)
  "Deserializes a message object of type '<GetJointPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointPosition-response>)))
  "Returns string type for a service object of type '<GetJointPosition-response>"
  "open_manipulator_msgs/GetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointPosition-response)))
  "Returns string type for a service object of type 'GetJointPosition-response"
  "open_manipulator_msgs/GetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointPosition-response>)))
  "Returns md5sum for a message object of type '<GetJointPosition-response>"
  "8d1ed85590e532631c111b78538ac282")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointPosition-response)))
  "Returns md5sum for a message object of type 'GetJointPosition-response"
  "8d1ed85590e532631c111b78538ac282")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointPosition-response>)))
  "Returns full string definition for message of type '<GetJointPosition-response>"
  (cl:format cl:nil "JointPosition joint_position~%~%~%~%================================================================================~%MSG: open_manipulator_msgs/JointPosition~%string[]   joint_name~%float64[]  position~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointPosition-response)))
  "Returns full string definition for message of type 'GetJointPosition-response"
  (cl:format cl:nil "JointPosition joint_position~%~%~%~%================================================================================~%MSG: open_manipulator_msgs/JointPosition~%string[]   joint_name~%float64[]  position~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointPosition-response
    (cl:cons ':joint_position (joint_position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointPosition)))
  'GetJointPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointPosition)))
  'GetJointPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointPosition)))
  "Returns string type for a service object of type '<GetJointPosition>"
  "open_manipulator_msgs/GetJointPosition")