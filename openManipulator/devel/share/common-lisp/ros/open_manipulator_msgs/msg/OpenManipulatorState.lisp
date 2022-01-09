; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-msg)


;//! \htmlinclude OpenManipulatorState.msg.html

(cl:defclass <OpenManipulatorState> (roslisp-msg-protocol:ros-message)
  ((open_manipulator_moving_state
    :reader open_manipulator_moving_state
    :initarg :open_manipulator_moving_state
    :type cl:string
    :initform "")
   (open_manipulator_actuator_state
    :reader open_manipulator_actuator_state
    :initarg :open_manipulator_actuator_state
    :type cl:string
    :initform ""))
)

(cl:defclass OpenManipulatorState (<OpenManipulatorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenManipulatorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenManipulatorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-msg:<OpenManipulatorState> is deprecated: use open_manipulator_msgs-msg:OpenManipulatorState instead.")))

(cl:ensure-generic-function 'open_manipulator_moving_state-val :lambda-list '(m))
(cl:defmethod open_manipulator_moving_state-val ((m <OpenManipulatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:open_manipulator_moving_state-val is deprecated.  Use open_manipulator_msgs-msg:open_manipulator_moving_state instead.")
  (open_manipulator_moving_state m))

(cl:ensure-generic-function 'open_manipulator_actuator_state-val :lambda-list '(m))
(cl:defmethod open_manipulator_actuator_state-val ((m <OpenManipulatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:open_manipulator_actuator_state-val is deprecated.  Use open_manipulator_msgs-msg:open_manipulator_actuator_state instead.")
  (open_manipulator_actuator_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OpenManipulatorState>)))
    "Constants for message type '<OpenManipulatorState>"
  '((:IS_MOVING . "IS_MOVING")
    (:STOPPED . "STOPPED")
    (:ACTUATOR_ENABLED . "ACTUATOR_ENABLED")
    (:ACTUATOR_DISABLED . "ACTUATOR_DISABLED"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OpenManipulatorState)))
    "Constants for message type 'OpenManipulatorState"
  '((:IS_MOVING . "IS_MOVING")
    (:STOPPED . "STOPPED")
    (:ACTUATOR_ENABLED . "ACTUATOR_ENABLED")
    (:ACTUATOR_DISABLED . "ACTUATOR_DISABLED"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenManipulatorState>) ostream)
  "Serializes a message object of type '<OpenManipulatorState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'open_manipulator_moving_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'open_manipulator_moving_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'open_manipulator_actuator_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'open_manipulator_actuator_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenManipulatorState>) istream)
  "Deserializes a message object of type '<OpenManipulatorState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_manipulator_moving_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'open_manipulator_moving_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'open_manipulator_actuator_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'open_manipulator_actuator_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenManipulatorState>)))
  "Returns string type for a message object of type '<OpenManipulatorState>"
  "open_manipulator_msgs/OpenManipulatorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenManipulatorState)))
  "Returns string type for a message object of type 'OpenManipulatorState"
  "open_manipulator_msgs/OpenManipulatorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenManipulatorState>)))
  "Returns md5sum for a message object of type '<OpenManipulatorState>"
  "35c95327a0dcb52791892bac52df33e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenManipulatorState)))
  "Returns md5sum for a message object of type 'OpenManipulatorState"
  "35c95327a0dcb52791892bac52df33e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenManipulatorState>)))
  "Returns full string definition for message of type '<OpenManipulatorState>"
  (cl:format cl:nil "########################################~%# CONSTANTS~%########################################~%string IS_MOVING = \"IS_MOVING\"~%string STOPPED = \"STOPPED\"~%string ACTUATOR_ENABLED = \"ACTUATOR_ENABLED\"~%string ACTUATOR_DISABLED = \"ACTUATOR_DISABLED\"~%~%########################################~%# Messages~%########################################~%string open_manipulator_moving_state~%string open_manipulator_actuator_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenManipulatorState)))
  "Returns full string definition for message of type 'OpenManipulatorState"
  (cl:format cl:nil "########################################~%# CONSTANTS~%########################################~%string IS_MOVING = \"IS_MOVING\"~%string STOPPED = \"STOPPED\"~%string ACTUATOR_ENABLED = \"ACTUATOR_ENABLED\"~%string ACTUATOR_DISABLED = \"ACTUATOR_DISABLED\"~%~%########################################~%# Messages~%########################################~%string open_manipulator_moving_state~%string open_manipulator_actuator_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenManipulatorState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'open_manipulator_moving_state))
     4 (cl:length (cl:slot-value msg 'open_manipulator_actuator_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenManipulatorState>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenManipulatorState
    (cl:cons ':open_manipulator_moving_state (open_manipulator_moving_state msg))
    (cl:cons ':open_manipulator_actuator_state (open_manipulator_actuator_state msg))
))
