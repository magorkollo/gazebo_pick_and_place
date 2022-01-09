; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude SetActuatorState-request.msg.html

(cl:defclass <SetActuatorState-request> (roslisp-msg-protocol:ros-message)
  ((set_actuator_state
    :reader set_actuator_state
    :initarg :set_actuator_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetActuatorState-request (<SetActuatorState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetActuatorState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetActuatorState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetActuatorState-request> is deprecated: use open_manipulator_msgs-srv:SetActuatorState-request instead.")))

(cl:ensure-generic-function 'set_actuator_state-val :lambda-list '(m))
(cl:defmethod set_actuator_state-val ((m <SetActuatorState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:set_actuator_state-val is deprecated.  Use open_manipulator_msgs-srv:set_actuator_state instead.")
  (set_actuator_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetActuatorState-request>) ostream)
  "Serializes a message object of type '<SetActuatorState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_actuator_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetActuatorState-request>) istream)
  "Deserializes a message object of type '<SetActuatorState-request>"
    (cl:setf (cl:slot-value msg 'set_actuator_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetActuatorState-request>)))
  "Returns string type for a service object of type '<SetActuatorState-request>"
  "open_manipulator_msgs/SetActuatorStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActuatorState-request)))
  "Returns string type for a service object of type 'SetActuatorState-request"
  "open_manipulator_msgs/SetActuatorStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetActuatorState-request>)))
  "Returns md5sum for a message object of type '<SetActuatorState-request>"
  "ad1d166d833769046644494dd3607bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetActuatorState-request)))
  "Returns md5sum for a message object of type 'SetActuatorState-request"
  "ad1d166d833769046644494dd3607bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetActuatorState-request>)))
  "Returns full string definition for message of type '<SetActuatorState-request>"
  (cl:format cl:nil "bool set_actuator_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetActuatorState-request)))
  "Returns full string definition for message of type 'SetActuatorState-request"
  (cl:format cl:nil "bool set_actuator_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetActuatorState-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetActuatorState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetActuatorState-request
    (cl:cons ':set_actuator_state (set_actuator_state msg))
))
;//! \htmlinclude SetActuatorState-response.msg.html

(cl:defclass <SetActuatorState-response> (roslisp-msg-protocol:ros-message)
  ((is_planned
    :reader is_planned
    :initarg :is_planned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetActuatorState-response (<SetActuatorState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetActuatorState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetActuatorState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<SetActuatorState-response> is deprecated: use open_manipulator_msgs-srv:SetActuatorState-response instead.")))

(cl:ensure-generic-function 'is_planned-val :lambda-list '(m))
(cl:defmethod is_planned-val ((m <SetActuatorState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:is_planned-val is deprecated.  Use open_manipulator_msgs-srv:is_planned instead.")
  (is_planned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetActuatorState-response>) ostream)
  "Serializes a message object of type '<SetActuatorState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_planned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetActuatorState-response>) istream)
  "Deserializes a message object of type '<SetActuatorState-response>"
    (cl:setf (cl:slot-value msg 'is_planned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetActuatorState-response>)))
  "Returns string type for a service object of type '<SetActuatorState-response>"
  "open_manipulator_msgs/SetActuatorStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActuatorState-response)))
  "Returns string type for a service object of type 'SetActuatorState-response"
  "open_manipulator_msgs/SetActuatorStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetActuatorState-response>)))
  "Returns md5sum for a message object of type '<SetActuatorState-response>"
  "ad1d166d833769046644494dd3607bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetActuatorState-response)))
  "Returns md5sum for a message object of type 'SetActuatorState-response"
  "ad1d166d833769046644494dd3607bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetActuatorState-response>)))
  "Returns full string definition for message of type '<SetActuatorState-response>"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetActuatorState-response)))
  "Returns full string definition for message of type 'SetActuatorState-response"
  (cl:format cl:nil "bool is_planned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetActuatorState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetActuatorState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetActuatorState-response
    (cl:cons ':is_planned (is_planned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetActuatorState)))
  'SetActuatorState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetActuatorState)))
  'SetActuatorState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetActuatorState)))
  "Returns string type for a service object of type '<SetActuatorState>"
  "open_manipulator_msgs/SetActuatorState")