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

class OpenManipulatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.open_manipulator_moving_state = null;
      this.open_manipulator_actuator_state = null;
    }
    else {
      if (initObj.hasOwnProperty('open_manipulator_moving_state')) {
        this.open_manipulator_moving_state = initObj.open_manipulator_moving_state
      }
      else {
        this.open_manipulator_moving_state = '';
      }
      if (initObj.hasOwnProperty('open_manipulator_actuator_state')) {
        this.open_manipulator_actuator_state = initObj.open_manipulator_actuator_state
      }
      else {
        this.open_manipulator_actuator_state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpenManipulatorState
    // Serialize message field [open_manipulator_moving_state]
    bufferOffset = _serializer.string(obj.open_manipulator_moving_state, buffer, bufferOffset);
    // Serialize message field [open_manipulator_actuator_state]
    bufferOffset = _serializer.string(obj.open_manipulator_actuator_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenManipulatorState
    let len;
    let data = new OpenManipulatorState(null);
    // Deserialize message field [open_manipulator_moving_state]
    data.open_manipulator_moving_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [open_manipulator_actuator_state]
    data.open_manipulator_actuator_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.open_manipulator_moving_state.length;
    length += object.open_manipulator_actuator_state.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'open_manipulator_msgs/OpenManipulatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35c95327a0dcb52791892bac52df33e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ########################################
    # CONSTANTS
    ########################################
    string IS_MOVING = "IS_MOVING"
    string STOPPED = "STOPPED"
    string ACTUATOR_ENABLED = "ACTUATOR_ENABLED"
    string ACTUATOR_DISABLED = "ACTUATOR_DISABLED"
    
    ########################################
    # Messages
    ########################################
    string open_manipulator_moving_state
    string open_manipulator_actuator_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpenManipulatorState(null);
    if (msg.open_manipulator_moving_state !== undefined) {
      resolved.open_manipulator_moving_state = msg.open_manipulator_moving_state;
    }
    else {
      resolved.open_manipulator_moving_state = ''
    }

    if (msg.open_manipulator_actuator_state !== undefined) {
      resolved.open_manipulator_actuator_state = msg.open_manipulator_actuator_state;
    }
    else {
      resolved.open_manipulator_actuator_state = ''
    }

    return resolved;
    }
};

// Constants for message
OpenManipulatorState.Constants = {
  IS_MOVING: '"IS_MOVING"',
  STOPPED: '"STOPPED"',
  ACTUATOR_ENABLED: '"ACTUATOR_ENABLED"',
  ACTUATOR_DISABLED: '"ACTUATOR_DISABLED"',
}

module.exports = OpenManipulatorState;
