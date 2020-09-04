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

class ExplorationTaskUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.task_id = null;
      this.success = null;
      this.visited_poses = null;
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
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('visited_poses')) {
        this.visited_poses = initObj.visited_poses
      }
      else {
        this.visited_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExplorationTaskUpdate
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint16(obj.task_id, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [visited_poses]
    // Serialize the length for message field [visited_poses]
    bufferOffset = _serializer.uint32(obj.visited_poses.length, buffer, bufferOffset);
    obj.visited_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExplorationTaskUpdate
    let len;
    let data = new ExplorationTaskUpdate(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [visited_poses]
    // Deserialize array length for message field [visited_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.visited_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.visited_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_id.length;
    length += 56 * object.visited_poses.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/ExplorationTaskUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee97353beddf617331562d4c082cdaad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The ID of the robot to which this exploration task update belongs to
    string robot_id
    # The sequence ID of the exploration task
    uint16 task_id
    # Has the exploration task being successfully completed
    bool success
    # If unsuccesful, what was the sequence of view poses the robot successfully visited
    geometry_msgs/Pose[] visited_poses
    
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
    const resolved = new ExplorationTaskUpdate(null);
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

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.visited_poses !== undefined) {
      resolved.visited_poses = new Array(msg.visited_poses.length);
      for (let i = 0; i < resolved.visited_poses.length; ++i) {
        resolved.visited_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.visited_poses[i]);
      }
    }
    else {
      resolved.visited_poses = []
    }

    return resolved;
    }
};

module.exports = ExplorationTaskUpdate;
