// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointPosition = require('../msg/JointPosition.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_group = null;
      this.joint_position = null;
      this.path_time = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_group')) {
        this.planning_group = initObj.planning_group
      }
      else {
        this.planning_group = '';
      }
      if (initObj.hasOwnProperty('joint_position')) {
        this.joint_position = initObj.joint_position
      }
      else {
        this.joint_position = new JointPosition();
      }
      if (initObj.hasOwnProperty('path_time')) {
        this.path_time = initObj.path_time
      }
      else {
        this.path_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointPositionRequest
    // Serialize message field [planning_group]
    bufferOffset = _serializer.string(obj.planning_group, buffer, bufferOffset);
    // Serialize message field [joint_position]
    bufferOffset = JointPosition.serialize(obj.joint_position, buffer, bufferOffset);
    // Serialize message field [path_time]
    bufferOffset = _serializer.float64(obj.path_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointPositionRequest
    let len;
    let data = new SetJointPositionRequest(null);
    // Deserialize message field [planning_group]
    data.planning_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_position]
    data.joint_position = JointPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_time]
    data.path_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.planning_group.length;
    length += JointPosition.getMessageSize(object.joint_position);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetJointPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab867938df63c0b7946cf0ff4eeddfcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_group
    JointPosition joint_position
    float64 path_time
    
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
    const resolved = new SetJointPositionRequest(null);
    if (msg.planning_group !== undefined) {
      resolved.planning_group = msg.planning_group;
    }
    else {
      resolved.planning_group = ''
    }

    if (msg.joint_position !== undefined) {
      resolved.joint_position = JointPosition.Resolve(msg.joint_position)
    }
    else {
      resolved.joint_position = new JointPosition()
    }

    if (msg.path_time !== undefined) {
      resolved.path_time = msg.path_time;
    }
    else {
      resolved.path_time = 0.0
    }

    return resolved;
    }
};

class SetJointPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_planned = null;
    }
    else {
      if (initObj.hasOwnProperty('is_planned')) {
        this.is_planned = initObj.is_planned
      }
      else {
        this.is_planned = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointPositionResponse
    // Serialize message field [is_planned]
    bufferOffset = _serializer.bool(obj.is_planned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointPositionResponse
    let len;
    let data = new SetJointPositionResponse(null);
    // Deserialize message field [is_planned]
    data.is_planned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetJointPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2638cc2443b1469b0e9e152083d7128d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_planned
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointPositionResponse(null);
    if (msg.is_planned !== undefined) {
      resolved.is_planned = msg.is_planned;
    }
    else {
      resolved.is_planned = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointPositionRequest,
  Response: SetJointPositionResponse,
  md5sum() { return 'a524a493b17854dbb5e253d2e23c3001'; },
  datatype() { return 'open_manipulator_msgs/SetJointPosition'; }
};
