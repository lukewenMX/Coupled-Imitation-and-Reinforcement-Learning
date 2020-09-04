// Auto-generated. Do not edit!

// (in-package exploration3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FreeSpaceFrontierRepresentative = require('./FreeSpaceFrontierRepresentative.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FreeSpaceFrontierRepresentatives {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frontiers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frontiers')) {
        this.frontiers = initObj.frontiers
      }
      else {
        this.frontiers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FreeSpaceFrontierRepresentatives
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frontiers]
    // Serialize the length for message field [frontiers]
    bufferOffset = _serializer.uint32(obj.frontiers.length, buffer, bufferOffset);
    obj.frontiers.forEach((val) => {
      bufferOffset = FreeSpaceFrontierRepresentative.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FreeSpaceFrontierRepresentatives
    let len;
    let data = new FreeSpaceFrontierRepresentatives(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frontiers]
    // Deserialize array length for message field [frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frontiers[i] = FreeSpaceFrontierRepresentative.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 52 * object.frontiers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/FreeSpaceFrontierRepresentatives';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc74daa8665957dca20e7eac4bdcbf22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    exploration3d_msgs/FreeSpaceFrontierRepresentative[] frontiers
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: exploration3d_msgs/FreeSpaceFrontierRepresentative
    # A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size 
    
    # the centroid of the freespace frontier voxel cluster
    geometry_msgs/Point p
    # the normal to the freespace frontier voxel surface at centroid
    geometry_msgs/Vector3 n
    # number of voxels in the freespace frontier cluster
    uint32 nvx
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FreeSpaceFrontierRepresentatives(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frontiers !== undefined) {
      resolved.frontiers = new Array(msg.frontiers.length);
      for (let i = 0; i < resolved.frontiers.length; ++i) {
        resolved.frontiers[i] = FreeSpaceFrontierRepresentative.Resolve(msg.frontiers[i]);
      }
    }
    else {
      resolved.frontiers = []
    }

    return resolved;
    }
};

module.exports = FreeSpaceFrontierRepresentatives;
