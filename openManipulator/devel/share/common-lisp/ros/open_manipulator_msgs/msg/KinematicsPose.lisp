; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-msg)


;//! \htmlinclude KinematicsPose.msg.html

(cl:defclass <KinematicsPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (max_accelerations_scaling_factor
    :reader max_accelerations_scaling_factor
    :initarg :max_accelerations_scaling_factor
    :type cl:float
    :initform 0.0)
   (max_velocity_scaling_factor
    :reader max_velocity_scaling_factor
    :initarg :max_velocity_scaling_factor
    :type cl:float
    :initform 0.0)
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass KinematicsPose (<KinematicsPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinematicsPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinematicsPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-msg:<KinematicsPose> is deprecated: use open_manipulator_msgs-msg:KinematicsPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <KinematicsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:pose-val is deprecated.  Use open_manipulator_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'max_accelerations_scaling_factor-val :lambda-list '(m))
(cl:defmethod max_accelerations_scaling_factor-val ((m <KinematicsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:max_accelerations_scaling_factor-val is deprecated.  Use open_manipulator_msgs-msg:max_accelerations_scaling_factor instead.")
  (max_accelerations_scaling_factor m))

(cl:ensure-generic-function 'max_velocity_scaling_factor-val :lambda-list '(m))
(cl:defmethod max_velocity_scaling_factor-val ((m <KinematicsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:max_velocity_scaling_factor-val is deprecated.  Use open_manipulator_msgs-msg:max_velocity_scaling_factor instead.")
  (max_velocity_scaling_factor m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <KinematicsPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-msg:tolerance-val is deprecated.  Use open_manipulator_msgs-msg:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinematicsPose>) ostream)
  "Serializes a message object of type '<KinematicsPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_accelerations_scaling_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_velocity_scaling_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinematicsPose>) istream)
  "Deserializes a message object of type '<KinematicsPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_accelerations_scaling_factor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_velocity_scaling_factor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinematicsPose>)))
  "Returns string type for a message object of type '<KinematicsPose>"
  "open_manipulator_msgs/KinematicsPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicsPose)))
  "Returns string type for a message object of type 'KinematicsPose"
  "open_manipulator_msgs/KinematicsPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinematicsPose>)))
  "Returns md5sum for a message object of type '<KinematicsPose>"
  "bad8d5def2efabb0336490f8e9f6f2e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinematicsPose)))
  "Returns md5sum for a message object of type 'KinematicsPose"
  "bad8d5def2efabb0336490f8e9f6f2e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinematicsPose>)))
  "Returns full string definition for message of type '<KinematicsPose>"
  (cl:format cl:nil "geometry_msgs/Pose  pose~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%float64    tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinematicsPose)))
  "Returns full string definition for message of type 'KinematicsPose"
  (cl:format cl:nil "geometry_msgs/Pose  pose~%float64    max_accelerations_scaling_factor~%float64    max_velocity_scaling_factor~%float64    tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinematicsPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinematicsPose>))
  "Converts a ROS message object to a list"
  (cl:list 'KinematicsPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':max_accelerations_scaling_factor (max_accelerations_scaling_factor msg))
    (cl:cons ':max_velocity_scaling_factor (max_velocity_scaling_factor msg))
    (cl:cons ':tolerance (tolerance msg))
))
