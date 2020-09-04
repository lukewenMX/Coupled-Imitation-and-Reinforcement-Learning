// Auto-generated. Do not edit!

// (in-package exploration3d_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let SurfaceFrontierRepresentative = require('../msg/SurfaceFrontierRepresentative.js');

//-----------------------------------------------------------

class GetSurfaceFrontierRepresentativesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('base_pose')) {
        this.base_pose = initObj.base_pose
      }
      else {
        this.base_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSurfaceFrontierRepresentativesRequest
    // Serialize message field [base_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.base_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSurfaceFrontierRepresentativesRequest
    let len;
    let data = new GetSurfaceFrontierRepresentativesRequest(null);
    // Deserialize message field [base_pose]
    data.base_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.base_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'exploration3d_msgs/GetSurfaceFrontierRepresentativesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '735bd3b58bedaeab43b3509fcd91d5f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped base_pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GetSurfaceFrontierRepresentativesRequest(null);
    if (msg.base_pose !== undefined) {
      resolved.base_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.base_pose)
    }
    else {
      resolved.base_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class GetSurfaceFrontierRepresentativesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontiers = null;
    }
    else {
      if (initObj.hasOwnProperty('frontiers')) {
        this.frontiers = initObj.frontiers
      }
      else {
        this.frontiers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSurfaceFrontierRepresentativesResponse
    // Serialize message field [frontiers]
    // Serialize the length for message field [frontiers]
    bufferOffset = _serializer.uint32(obj.frontiers.length, buffer, bufferOffset);
    obj.frontiers.forEach((val) => {
      bufferOffset = SurfaceFrontierRepresentative.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSurfaceFrontierRepresentativesResponse
    let len;
    let data = new GetSurfaceFrontierRepresentativesResponse(null);
    // Deserialize message field [frontiers]
    // Deserialize array length for message field [frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frontiers[i] = SurfaceFrontierRepresentative.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 209 * object.frontiers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'exploration3d_msgs/GetSurfaceFrontierRepresentativesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8c22723780d2e8a8aef87a12cb9ee1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SurfaceFrontierRepresentative[] frontiers
    
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
    const resolved = new GetSurfaceFrontierRepresentativesResponse(null);
    if (msg.frontiers !== undefined) {
      resolved.frontiers = new Array(msg.frontiers.length);
      for (let i = 0; i < resolved.frontiers.length; ++i) {
        resolved.frontiers[i] = SurfaceFrontierRepresentative.Resolve(msg.frontiers[i]);
      }
    }
    else {
      resolved.frontiers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSurfaceFrontierRepresentativesRequest,
  Response: GetSurfaceFrontierRepresentativesResponse,
  md5sum() { return 'ceb941e9622ea77681232187bc67de45'; },
  datatype() { return 'exploration3d_msgs/GetSurfaceFrontierRepresentatives'; }
};
