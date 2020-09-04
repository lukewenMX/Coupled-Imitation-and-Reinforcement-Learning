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

let SurfaceFrontierUpdates = require('../msg/SurfaceFrontierUpdates.js');

//-----------------------------------------------------------

class GetSurfaceFrontierUpdatesRequest {
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
    // Serializes a message object of type GetSurfaceFrontierUpdatesRequest
    // Serialize message field [base_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.base_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSurfaceFrontierUpdatesRequest
    let len;
    let data = new GetSurfaceFrontierUpdatesRequest(null);
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
    return 'exploration3d_msgs/GetSurfaceFrontierUpdatesRequest';
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
    const resolved = new GetSurfaceFrontierUpdatesRequest(null);
    if (msg.base_pose !== undefined) {
      resolved.base_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.base_pose)
    }
    else {
      resolved.base_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class GetSurfaceFrontierUpdatesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.updates = null;
    }
    else {
      if (initObj.hasOwnProperty('updates')) {
        this.updates = initObj.updates
      }
      else {
        this.updates = new SurfaceFrontierUpdates();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSurfaceFrontierUpdatesResponse
    // Serialize message field [updates]
    bufferOffset = SurfaceFrontierUpdates.serialize(obj.updates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSurfaceFrontierUpdatesResponse
    let len;
    let data = new GetSurfaceFrontierUpdatesResponse(null);
    // Deserialize message field [updates]
    data.updates = SurfaceFrontierUpdates.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SurfaceFrontierUpdates.getMessageSize(object.updates);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'exploration3d_msgs/GetSurfaceFrontierUpdatesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3444930470c6f7a20467a3aa0621df3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SurfaceFrontierUpdates updates
    
    ================================================================================
    MSG: exploration3d_msgs/SurfaceFrontierUpdates
    std_msgs/Header header
    exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers
    exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers
    
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
    const resolved = new GetSurfaceFrontierUpdatesResponse(null);
    if (msg.updates !== undefined) {
      resolved.updates = SurfaceFrontierUpdates.Resolve(msg.updates)
    }
    else {
      resolved.updates = new SurfaceFrontierUpdates()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSurfaceFrontierUpdatesRequest,
  Response: GetSurfaceFrontierUpdatesResponse,
  md5sum() { return '2d45db01356448270de7d3f64bbb4d6c'; },
  datatype() { return 'exploration3d_msgs/GetSurfaceFrontierUpdates'; }
};
