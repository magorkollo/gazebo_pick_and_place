// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class KinematicsPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.max_accelerations_scaling_factor = null;
      this.max_velocity_scaling_factor = null;
      this.tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('max_accelerations_scaling_factor')) {
        this.max_accelerations_scaling_factor = initObj.max_accelerations_scaling_factor
      }
      else {
        this.max_accelerations_scaling_factor = 0.0;
      }
      if (initObj.hasOwnProperty('max_velocity_scaling_factor')) {
        this.max_velocity_scaling_factor = initObj.max_velocity_scaling_factor
      }
      else {
        this.max_velocity_scaling_factor = 0.0;
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinematicsPose
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [max_accelerations_scaling_factor]
    bufferOffset = _serializer.float64(obj.max_accelerations_scaling_factor, buffer, bufferOffset);
    // Serialize message field [max_velocity_scaling_factor]
    bufferOffset = _serializer.float64(obj.max_velocity_scaling_factor, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float64(obj.tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinematicsPose
    let len;
    let data = new KinematicsPose(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_accelerations_scaling_factor]
    data.max_accelerations_scaling_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_velocity_scaling_factor]
    data.max_velocity_scaling_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'open_manipulator_msgs/KinematicsPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bad8d5def2efabb0336490f8e9f6f2e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose  pose
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KinematicsPose(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.max_accelerations_scaling_factor !== undefined) {
      resolved.max_accelerations_scaling_factor = msg.max_accelerations_scaling_factor;
    }
    else {
      resolved.max_accelerations_scaling_factor = 0.0
    }

    if (msg.max_velocity_scaling_factor !== undefined) {
      resolved.max_velocity_scaling_factor = msg.max_velocity_scaling_factor;
    }
    else {
      resolved.max_velocity_scaling_factor = 0.0
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    return resolved;
    }
};

module.exports = KinematicsPose;
