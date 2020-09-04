// Auto-generated. Do not edit!

// (in-package navigation_3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SurfaceMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width_ = null;
      this.height_ = null;
      this.origin_ = null;
      this.resolution_ = null;
      this.H_ = null;
    }
    else {
      if (initObj.hasOwnProperty('width_')) {
        this.width_ = initObj.width_
      }
      else {
        this.width_ = 0;
      }
      if (initObj.hasOwnProperty('height_')) {
        this.height_ = initObj.height_
      }
      else {
        this.height_ = 0;
      }
      if (initObj.hasOwnProperty('origin_')) {
        this.origin_ = initObj.origin_
      }
      else {
        this.origin_ = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('resolution_')) {
        this.resolution_ = initObj.resolution_
      }
      else {
        this.resolution_ = 0.0;
      }
      if (initObj.hasOwnProperty('H_')) {
        this.H_ = initObj.H_
      }
      else {
        this.H_ = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SurfaceMap
    // Serialize message field [width_]
    bufferOffset = _serializer.int32(obj.width_, buffer, bufferOffset);
    // Serialize message field [height_]
    bufferOffset = _serializer.int32(obj.height_, buffer, bufferOffset);
    // Serialize message field [origin_]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.origin_, buffer, bufferOffset);
    // Serialize message field [resolution_]
    bufferOffset = _serializer.float32(obj.resolution_, buffer, bufferOffset);
    // Serialize message field [H_]
    bufferOffset = _arraySerializer.float32(obj.H_, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SurfaceMap
    let len;
    let data = new SurfaceMap(null);
    // Deserialize message field [width_]
    data.width_ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_]
    data.height_ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [origin_]
    data.origin_ = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [resolution_]
    data.resolution_ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [H_]
    data.H_ = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.H_.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation_3d_msgs/SurfaceMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3e2530951abea04475d9a0a18c55de6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # width of the 2D grid in number of cells
    int32 width_
    # height of the 2D grid in number of cells
    int32 height_
    # origin of thet grid
    geometry_msgs/Point origin_
    # resolution of the grid (m/cell)
    float32 resolution_
    # vector containing the grid in row-major order (size of H_ = width_*height_)
    float32[] H_
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
    const resolved = new SurfaceMap(null);
    if (msg.width_ !== undefined) {
      resolved.width_ = msg.width_;
    }
    else {
      resolved.width_ = 0
    }

    if (msg.height_ !== undefined) {
      resolved.height_ = msg.height_;
    }
    else {
      resolved.height_ = 0
    }

    if (msg.origin_ !== undefined) {
      resolved.origin_ = geometry_msgs.msg.Point.Resolve(msg.origin_)
    }
    else {
      resolved.origin_ = new geometry_msgs.msg.Point()
    }

    if (msg.resolution_ !== undefined) {
      resolved.resolution_ = msg.resolution_;
    }
    else {
      resolved.resolution_ = 0.0
    }

    if (msg.H_ !== undefined) {
      resolved.H_ = msg.H_;
    }
    else {
      resolved.H_ = []
    }

    return resolved;
    }
};

module.exports = SurfaceMap;
