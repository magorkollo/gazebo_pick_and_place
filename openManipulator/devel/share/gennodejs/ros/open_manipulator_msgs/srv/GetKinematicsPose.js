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

let KinematicsPose = require('../msg/KinematicsPose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetKinematicsPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_group = null;
      this.end_effector_name = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetKinematicsPoseRequest
    // Serialize message field [planning_group]
    bufferOffset = _serializer.string(obj.planning_group, buffer, bufferOffset);
    // Serialize message field [end_effector_name]
    bufferOffset = _serializer.string(obj.end_effector_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetKinematicsPoseRequest
    let len;
    let data = new GetKinematicsPoseRequest(null);
    // Deserialize message field [planning_group]
    data.planning_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_effector_name]
    data.end_effector_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.planning_group.length;
    length += object.end_effector_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/GetKinematicsPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14dd5674451c0fe6eacac0ded7197f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_group
    string end_effector_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetKinematicsPoseRequest(null);
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

    return resolved;
    }
};

class GetKinematicsPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.kinematics_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('kinematics_pose')) {
        this.kinematics_pose = initObj.kinematics_pose
      }
      else {
        this.kinematics_pose = new KinematicsPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetKinematicsPoseResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [kinematics_pose]
    bufferOffset = KinematicsPose.serialize(obj.kinematics_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetKinematicsPoseResponse
    let len;
    let data = new GetKinematicsPoseResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [kinematics_pose]
    data.kinematics_pose = KinematicsPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/GetKinematicsPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b64b73433e2775c9c4b7e1a00dd6995';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    KinematicsPose kinematics_pose
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new GetKinematicsPoseResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.kinematics_pose !== undefined) {
      resolved.kinematics_pose = KinematicsPose.Resolve(msg.kinematics_pose)
    }
    else {
      resolved.kinematics_pose = new KinematicsPose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetKinematicsPoseRequest,
  Response: GetKinematicsPoseResponse,
  md5sum() { return '2fe60b9f4a4b683c14e60a854bb9e0e1'; },
  datatype() { return 'open_manipulator_msgs/GetKinematicsPose'; }
};
