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


//-----------------------------------------------------------

class SetActuatorStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_actuator_state = null;
    }
    else {
      if (initObj.hasOwnProperty('set_actuator_state')) {
        this.set_actuator_state = initObj.set_actuator_state
      }
      else {
        this.set_actuator_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetActuatorStateRequest
    // Serialize message field [set_actuator_state]
    bufferOffset = _serializer.bool(obj.set_actuator_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActuatorStateRequest
    let len;
    let data = new SetActuatorStateRequest(null);
    // Deserialize message field [set_actuator_state]
    data.set_actuator_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetActuatorStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a8a1fa84fab126c7567fbb489a23ea5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_actuator_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetActuatorStateRequest(null);
    if (msg.set_actuator_state !== undefined) {
      resolved.set_actuator_state = msg.set_actuator_state;
    }
    else {
      resolved.set_actuator_state = false
    }

    return resolved;
    }
};

class SetActuatorStateResponse {
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
    // Serializes a message object of type SetActuatorStateResponse
    // Serialize message field [is_planned]
    bufferOffset = _serializer.bool(obj.is_planned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActuatorStateResponse
    let len;
    let data = new SetActuatorStateResponse(null);
    // Deserialize message field [is_planned]
    data.is_planned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetActuatorStateResponse';
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
    const resolved = new SetActuatorStateResponse(null);
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
  Request: SetActuatorStateRequest,
  Response: SetActuatorStateResponse,
  md5sum() { return 'ad1d166d833769046644494dd3607bd2'; },
  datatype() { return 'open_manipulator_msgs/SetActuatorState'; }
};
