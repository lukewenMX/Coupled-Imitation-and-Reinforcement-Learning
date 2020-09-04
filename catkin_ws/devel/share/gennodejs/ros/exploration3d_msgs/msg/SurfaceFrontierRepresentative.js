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

class SurfaceFrontierRepresentative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p = null;
      this.length = null;
      this.parent_length = null;
      this.corner_1 = null;
      this.corner_2 = null;
      this.parent_corner_1 = null;
      this.parent_corner_2 = null;
      this.v = null;
      this.f_grad = null;
      this.n = null;
      this.a = null;
      this.is_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('parent_length')) {
        this.parent_length = initObj.parent_length
      }
      else {
        this.parent_length = 0.0;
      }
      if (initObj.hasOwnProperty('corner_1')) {
        this.corner_1 = initObj.corner_1
      }
      else {
        this.corner_1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('corner_2')) {
        this.corner_2 = initObj.corner_2
      }
      else {
        this.corner_2 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('parent_corner_1')) {
        this.parent_corner_1 = initObj.parent_corner_1
      }
      else {
        this.parent_corner_1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('parent_corner_2')) {
        this.parent_corner_2 = initObj.parent_corner_2
      }
      else {
        this.parent_corner_2 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('f_grad')) {
        this.f_grad = initObj.f_grad
      }
      else {
        this.f_grad = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('is_floor')) {
        this.is_floor = initObj.is_floor
      }
      else {
        this.is_floor = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SurfaceFrontierRepresentative
    // Serialize message field [p]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [parent_length]
    bufferOffset = _serializer.float32(obj.parent_length, buffer, bufferOffset);
    // Serialize message field [corner_1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.corner_1, buffer, bufferOffset);
    // Serialize message field [corner_2]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.corner_2, buffer, bufferOffset);
    // Serialize message field [parent_corner_1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.parent_corner_1, buffer, bufferOffset);
    // Serialize message field [parent_corner_2]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.parent_corner_2, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.v, buffer, bufferOffset);
    // Serialize message field [f_grad]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.f_grad, buffer, bufferOffset);
    // Serialize message field [n]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.n, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [is_floor]
    bufferOffset = _serializer.bool(obj.is_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SurfaceFrontierRepresentative
    let len;
    let data = new SurfaceFrontierRepresentative(null);
    // Deserialize message field [p]
    data.p = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [parent_length]
    data.parent_length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [corner_1]
    data.corner_1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [corner_2]
    data.corner_2 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_corner_1]
    data.parent_corner_1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_corner_2]
    data.parent_corner_2 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [f_grad]
    data.f_grad = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [n]
    data.n = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_floor]
    data.is_floor = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 209;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/SurfaceFrontierRepresentative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed77d51612da3010c5ebfa0790477505';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SurfaceFrontierRepresentative(null);
    if (msg.p !== undefined) {
      resolved.p = geometry_msgs.msg.Point.Resolve(msg.p)
    }
    else {
      resolved.p = new geometry_msgs.msg.Point()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.parent_length !== undefined) {
      resolved.parent_length = msg.parent_length;
    }
    else {
      resolved.parent_length = 0.0
    }

    if (msg.corner_1 !== undefined) {
      resolved.corner_1 = geometry_msgs.msg.Point.Resolve(msg.corner_1)
    }
    else {
      resolved.corner_1 = new geometry_msgs.msg.Point()
    }

    if (msg.corner_2 !== undefined) {
      resolved.corner_2 = geometry_msgs.msg.Point.Resolve(msg.corner_2)
    }
    else {
      resolved.corner_2 = new geometry_msgs.msg.Point()
    }

    if (msg.parent_corner_1 !== undefined) {
      resolved.parent_corner_1 = geometry_msgs.msg.Point.Resolve(msg.parent_corner_1)
    }
    else {
      resolved.parent_corner_1 = new geometry_msgs.msg.Point()
    }

    if (msg.parent_corner_2 !== undefined) {
      resolved.parent_corner_2 = geometry_msgs.msg.Point.Resolve(msg.parent_corner_2)
    }
    else {
      resolved.parent_corner_2 = new geometry_msgs.msg.Point()
    }

    if (msg.v !== undefined) {
      resolved.v = geometry_msgs.msg.Point.Resolve(msg.v)
    }
    else {
      resolved.v = new geometry_msgs.msg.Point()
    }

    if (msg.f_grad !== undefined) {
      resolved.f_grad = geometry_msgs.msg.Point.Resolve(msg.f_grad)
    }
    else {
      resolved.f_grad = new geometry_msgs.msg.Point()
    }

    if (msg.n !== undefined) {
      resolved.n = geometry_msgs.msg.Point.Resolve(msg.n)
    }
    else {
      resolved.n = new geometry_msgs.msg.Point()
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.is_floor !== undefined) {
      resolved.is_floor = msg.is_floor;
    }
    else {
      resolved.is_floor = false
    }

    return resolved;
    }
};

module.exports = SurfaceFrontierRepresentative;
