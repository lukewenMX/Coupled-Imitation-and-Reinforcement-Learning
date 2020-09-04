// Auto-generated. Do not edit!

// (in-package exploration3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ExplorationTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.task_id = null;
      this.view_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('view_poses')) {
        this.view_poses = initObj.view_poses
      }
      else {
        this.view_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExplorationTask
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint16(obj.task_id, buffer, bufferOffset);
    // Serialize message field [view_poses]
    // Serialize the length for message field [view_poses]
    bufferOffset = _serializer.uint32(obj.view_poses.length, buffer, bufferOffset);
    obj.view_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExplorationTask
    let len;
    let data = new ExplorationTask(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [view_poses]
    // Deserialize array length for message field [view_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.view_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.view_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_id.length;
    length += 56 * object.view_poses.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/ExplorationTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e440d5a3ac78a83fd60834904ff2e4b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The ID of the robot to which this exploration task belongs
    string robot_id
    # The sequence ID of the exploration task
    uint16 task_id
    # The vector of view poses the robot is to visit as part of its exploration task
    geometry_msgs/Pose[] view_poses
    
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
    const resolved = new ExplorationTask(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.view_poses !== undefined) {
      resolved.view_poses = new Array(msg.view_poses.length);
      for (let i = 0; i < resolved.view_poses.length; ++i) {
        resolved.view_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.view_poses[i]);
      }
    }
    else {
      resolved.view_poses = []
    }

    return resolved;
    }
};

module.exports = ExplorationTask;
