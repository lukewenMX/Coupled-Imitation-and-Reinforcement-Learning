// Auto-generated. Do not edit!

// (in-package navigation_3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.robot_ip = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('robot_ip')) {
        this.robot_ip = initObj.robot_ip
      }
      else {
        this.robot_ip = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfo
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [robot_ip]
    bufferOffset = _serializer.string(obj.robot_ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfo
    let len;
    let data = new RobotInfo(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_ip]
    data.robot_ip = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.robot_ip.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation_3d_msgs/RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbc88eba51f8efa42fd2b49c8ec3a91b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The name of the robot
    string robot_name
    # The ip of the robot
    string robot_ip
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfo(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.robot_ip !== undefined) {
      resolved.robot_ip = msg.robot_ip;
    }
    else {
      resolved.robot_ip = ''
    }

    return resolved;
    }
};

module.exports = RobotInfo;
