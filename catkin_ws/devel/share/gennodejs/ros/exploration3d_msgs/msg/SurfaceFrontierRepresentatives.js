// Auto-generated. Do not edit!

// (in-package exploration3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SurfaceFrontierRepresentative = require('./SurfaceFrontierRepresentative.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SurfaceFrontierRepresentatives {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.surface_frontiers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('surface_frontiers')) {
        this.surface_frontiers = initObj.surface_frontiers
      }
      else {
        this.surface_frontiers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SurfaceFrontierRepresentatives
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [surface_frontiers]
    // Serialize the length for message field [surface_frontiers]
    bufferOffset = _serializer.uint32(obj.surface_frontiers.length, buffer, bufferOffset);
    obj.surface_frontiers.forEach((val) => {
      bufferOffset = SurfaceFrontierRepresentative.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SurfaceFrontierRepresentatives
    let len;
    let data = new SurfaceFrontierRepresentatives(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [surface_frontiers]
    // Deserialize array length for message field [surface_frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.surface_frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.surface_frontiers[i] = SurfaceFrontierRepresentative.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 209 * object.surface_frontiers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/SurfaceFrontierRepresentatives';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd678cc4232ba33d9b77e1f95c1049c54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    exploration3d_msgs/SurfaceFrontierRepresentative[] surface_frontiers
    
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
    MSG: exploration3d_msgs/SurfaceFrontierRepresentative
    # A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.
    
    # If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.
    
    # the single 3D point representing a surface frontier
    geometry_msgs/Point p
    # the length of the frontier in meters
    float32 length
    # the length of the parent frontier contour in meters
    float32 parent_length
    # the corner points associated with the frontier representative
    geometry_msgs/Point corner_1
    geometry_msgs/Point corner_2
    # the two corner points of the parent frontier contour containing the frontier
    geometry_msgs/Point parent_corner_1
    geometry_msgs/Point parent_corner_2
    # surface trend vector
    geometry_msgs/Point v
    # tangent to the surface frontier contour at representative point p
    geometry_msgs/Point f_grad
    # surface normal at p oriented towards the reachable portion of the environment
    geometry_msgs/Point n
    # Coeffcient of the quadratic used to approximate surface trend curve
    float64 a
    # if the representative is from the surface the robot traversed
    bool is_floor
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new SurfaceFrontierRepresentatives(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.surface_frontiers !== undefined) {
      resolved.surface_frontiers = new Array(msg.surface_frontiers.length);
      for (let i = 0; i < resolved.surface_frontiers.length; ++i) {
        resolved.surface_frontiers[i] = SurfaceFrontierRepresentative.Resolve(msg.surface_frontiers[i]);
      }
    }
    else {
      resolved.surface_frontiers = []
    }

    return resolved;
    }
};

module.exports = SurfaceFrontierRepresentatives;
