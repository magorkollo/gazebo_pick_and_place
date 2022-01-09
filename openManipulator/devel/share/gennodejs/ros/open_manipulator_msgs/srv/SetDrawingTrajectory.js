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

class SetDrawingTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end_effector_name = null;
      this.drawing_trajectory_name = null;
      this.param = null;
      this.path_time = null;
    }
    else {
      if (initObj.hasOwnProperty('end_effector_name')) {
        this.end_effector_name = initObj.end_effector_name
      }
      else {
        this.end_effector_name = '';
      }
      if (initObj.hasOwnProperty('drawing_trajectory_name')) {
        this.drawing_trajectory_name = initObj.drawing_trajectory_name
      }
      else {
        this.drawing_trajectory_name = '';
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = [];
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
    // Serializes a message object of type SetDrawingTrajectoryRequest
    // Serialize message field [end_effector_name]
    bufferOffset = _serializer.string(obj.end_effector_name, buffer, bufferOffset);
    // Serialize message field [drawing_trajectory_name]
    bufferOffset = _serializer.string(obj.drawing_trajectory_name, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = _arraySerializer.float64(obj.param, buffer, bufferOffset, null);
    // Serialize message field [path_time]
    bufferOffset = _serializer.float64(obj.path_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDrawingTrajectoryRequest
    let len;
    let data = new SetDrawingTrajectoryRequest(null);
    // Deserialize message field [end_effector_name]
    data.end_effector_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [drawing_trajectory_name]
    data.drawing_trajectory_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [path_time]
    data.path_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.end_effector_name.length;
    length += object.drawing_trajectory_name.length;
    length += 8 * object.param.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetDrawingTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b1621cd6a6a57a64c9ee8bfb64e3d14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string end_effector_name
    string drawing_trajectory_name
    float64[] param
    float64 path_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDrawingTrajectoryRequest(null);
    if (msg.end_effector_name !== undefined) {
      resolved.end_effector_name = msg.end_effector_name;
    }
    else {
      resolved.end_effector_name = ''
    }

    if (msg.drawing_trajectory_name !== undefined) {
      resolved.drawing_trajectory_name = msg.drawing_trajectory_name;
    }
    else {
      resolved.drawing_trajectory_name = ''
    }

    if (msg.param !== undefined) {
      resolved.param = msg.param;
    }
    else {
      resolved.param = []
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

class SetDrawingTrajectoryResponse {
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
    // Serializes a message object of type SetDrawingTrajectoryResponse
    // Serialize message field [is_planned]
    bufferOffset = _serializer.bool(obj.is_planned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDrawingTrajectoryResponse
    let len;
    let data = new SetDrawingTrajectoryResponse(null);
    // Deserialize message field [is_planned]
    data.is_planned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetDrawingTrajectoryResponse';
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
    const resolved = new SetDrawingTrajectoryResponse(null);
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
  Request: SetDrawingTrajectoryRequest,
  Response: SetDrawingTrajectoryResponse,
  md5sum() { return '89315cba5d7bbfff59192e9c2e5907e7'; },
  datatype() { return 'open_manipulator_msgs/SetDrawingTrajectory'; }
};
