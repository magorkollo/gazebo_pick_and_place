// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.position = null;
      this.max_accelerations_scaling_factor = null;
      this.max_velocity_scaling_factor = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointPosition
    // Serialize message field [joint_name]
    bufferOffset = _arraySerializer.string(obj.joint_name, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [max_accelerations_scaling_factor]
    bufferOffset = _serializer.float64(obj.max_accelerations_scaling_factor, buffer, bufferOffset);
    // Serialize message field [max_velocity_scaling_factor]
    bufferOffset = _serializer.float64(obj.max_velocity_scaling_factor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointPosition
    let len;
    let data = new JointPosition(null);
    // Deserialize message field [joint_name]
    data.joint_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_accelerations_scaling_factor]
    data.max_accelerations_scaling_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_velocity_scaling_factor]
    data.max_velocity_scaling_factor = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.position.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'open_manipulator_msgs/JointPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6b6bc3417b5da955b766eb41a6c1698';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[]   joint_name
    float64[]  position
    float64    max_accelerations_scaling_factor
    float64    max_velocity_scaling_factor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointPosition(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
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

    return resolved;
    }
};

module.exports = JointPosition;
