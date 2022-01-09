// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let JointPosition = require('../msg/JointPosition.js');

//-----------------------------------------------------------

class GetJointPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_group = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_group')) {
        this.planning_group = initObj.planning_group
      }
      else {
        this.planning_group = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointPositionRequest
    // Serialize message field [planning_group]
    bufferOffset = _serializer.string(obj.planning_group, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointPositionRequest
    let len;
    let data = new GetJointPositionRequest(null);
    // Deserialize message field [planning_group]
    data.planning_group = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.planning_group.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/GetJointPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b02e06b167eb20b51185dc7d0b638aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_group
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetJointPositionRequest(null);
    if (msg.planning_group !== undefined) {
      resolved.planning_group = msg.planning_group;
    }
    else {
      resolved.planning_group = ''
    }

    return resolved;
    }
};

class GetJointPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_position = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_position')) {
        this.joint_position = initObj.joint_position
      }
      else {
        this.joint_position = new JointPosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointPositionResponse
    // Serialize message field [joint_position]
    bufferOffset = JointPosition.serialize(obj.joint_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointPositionResponse
    let len;
    let data = new GetJointPositionResponse(null);
    // Deserialize message field [joint_position]
    data.joint_position = JointPosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += JointPosition.getMessageSize(object.joint_position);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/GetJointPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1f1ee99b5e77308297dc4eeedd305d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointPosition joint_position
    
    
    
    ================================================================================
    MSG: open_manipulator_msgs/JointPosition
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
    const resolved = new GetJointPositionResponse(null);
    if (msg.joint_position !== undefined) {
      resolved.joint_position = JointPosition.Resolve(msg.joint_position)
    }
    else {
      resolved.joint_position = new JointPosition()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetJointPositionRequest,
  Response: GetJointPositionResponse,
  md5sum() { return '8d1ed85590e532631c111b78538ac282'; },
  datatype() { return 'open_manipulator_msgs/GetJointPosition'; }
};
