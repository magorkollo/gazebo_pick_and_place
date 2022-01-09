// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KinematicsPose = require('../msg/KinematicsPose.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetKinematicsPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_group = null;
      this.end_effector_name = null;
      this.kinematics_pose = null;
      this.path_time = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_group')) {
        this.planning_group = initObj.planning_group
      }
      else {
        this.planning_group = '';
      }
      if (initObj.hasOwnProperty('end_effector_name')) {
        this.end_effector_name = initObj.end_effector_name
      }
      else {
        this.end_effector_name = '';
      }
      if (initObj.hasOwnProperty('kinematics_pose')) {
        this.kinematics_pose = initObj.kinematics_pose
      }
      else {
        this.kinematics_pose = new KinematicsPose();
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
    // Serializes a message object of type SetKinematicsPoseRequest
    // Serialize message field [planning_group]
    bufferOffset = _serializer.string(obj.planning_group, buffer, bufferOffset);
    // Serialize message field [end_effector_name]
    bufferOffset = _serializer.string(obj.end_effector_name, buffer, bufferOffset);
    // Serialize message field [kinematics_pose]
    bufferOffset = KinematicsPose.serialize(obj.kinematics_pose, buffer, bufferOffset);
    // Serialize message field [path_time]
    bufferOffset = _serializer.float64(obj.path_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetKinematicsPoseRequest
    let len;
    let data = new SetKinematicsPoseRequest(null);
    // Deserialize message field [planning_group]
    data.planning_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_effector_name]
    data.end_effector_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kinematics_pose]
    data.kinematics_pose = KinematicsPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_time]
    data.path_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.planning_group.length;
    length += object.end_effector_name.length;
    return length + 96;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetKinematicsPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4791502d3cd986f50c19faec2e660dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_group
    string end_effector_name
    KinematicsPose kinematics_pose
    float64 path_time
    
    ================================================================================
    MSG: open_manipulator_msgs/KinematicsPose
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
    const resolved = new SetKinematicsPoseRequest(null);
    if (msg.planning_group !== undefined) {
      resolved.planning_group = msg.planning_group;
    }
    else {
      resolved.planning_group = ''
    }

    if (msg.end_effector_name !== undefined) {
      resolved.end_effector_name = msg.end_effector_name;
    }
    else {
      resolved.end_effector_name = ''
    }

    if (msg.kinematics_pose !== undefined) {
      resolved.kinematics_pose = KinematicsPose.Resolve(msg.kinematics_pose)
    }
    else {
      resolved.kinematics_pose = new KinematicsPose()
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

class SetKinematicsPoseResponse {
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
    // Serializes a message object of type SetKinematicsPoseResponse
    // Serialize message field [is_planned]
    bufferOffset = _serializer.bool(obj.is_planned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetKinematicsPoseResponse
    let len;
    let data = new SetKinematicsPoseResponse(null);
    // Deserialize message field [is_planned]
    data.is_planned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/SetKinematicsPoseResponse';
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
    const resolved = new SetKinematicsPoseResponse(null);
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
  Request: SetKinematicsPoseRequest,
  Response: SetKinematicsPoseResponse,
  md5sum() { return 'cce8ad8b6eb29e4b0e3449a09848786e'; },
  datatype() { return 'open_manipulator_msgs/SetKinematicsPose'; }
};
