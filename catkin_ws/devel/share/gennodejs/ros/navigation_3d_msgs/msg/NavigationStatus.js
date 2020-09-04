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

class NavigationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationStatus
    let len;
    let data = new NavigationStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation_3d_msgs/NavigationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5606ec4baf7ca5bbc5263807ea86c814';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status          # status of the navigator
    
    uint8 WAITING   = 0   # Waiting for next plan
    uint8 ACTIVE    = 1   # plan is being executed
    uint8 SUCCEEDED = 3   # plan execution just succeeded
    uint8 ABORTED   = 4   # plan execution aborted
    uint8 INIT      = 5   # initial state of navigator
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
NavigationStatus.Constants = {
  WAITING: 0,
  ACTIVE: 1,
  SUCCEEDED: 3,
  ABORTED: 4,
  INIT: 5,
}

module.exports = NavigationStatus;
