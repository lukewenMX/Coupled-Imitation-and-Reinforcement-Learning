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

let FreeSpaceFrontierRepresentative = require('../msg/FreeSpaceFrontierRepresentative.js');

//-----------------------------------------------------------

class GetFreeSpaceFrontierRepresentativesRequest {
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
    // Serializes a message object of type GetFreeSpaceFrontierRepresentativesRequest
    // Serialize message field [base_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.base_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFreeSpaceFrontierRepresentativesRequest
    let len;
    let data = new GetFreeSpaceFrontierRepresentativesRequest(null);
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
    return 'exploration3d_msgs/GetFreeSpaceFrontierRepresentativesRequest';
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
    const resolved = new GetFreeSpaceFrontierRepresentativesRequest(null);
    if (msg.base_pose !== undefined) {
      resolved.base_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.base_pose)
    }
    else {
      resolved.base_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class GetFreeSpaceFrontierRepresentativesResponse {
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
    // Serializes a message object of type GetFreeSpaceFrontierRepresentativesResponse
    // Serialize message field [frontiers]
    // Serialize the length for message field [frontiers]
    bufferOffset = _serializer.uint32(obj.frontiers.length, buffer, bufferOffset);
    obj.frontiers.forEach((val) => {
      bufferOffset = FreeSpaceFrontierRepresentative.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFreeSpaceFrontierRepresentativesResponse
    let len;
    let data = new GetFreeSpaceFrontierRepresentativesResponse(null);
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
    length += 52 * object.frontiers.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'exploration3d_msgs/GetFreeSpaceFrontierRepresentativesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cc2c89628ede75606cb29c84583b52c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FreeSpaceFrontierRepresentative[] frontiers
    
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
    const resolved = new GetFreeSpaceFrontierRepresentativesResponse(null);
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

module.exports = {
  Request: GetFreeSpaceFrontierRepresentativesRequest,
  Response: GetFreeSpaceFrontierRepresentativesResponse,
  md5sum() { return '42bad0289ab9e4d55cd64632c44f3f09'; },
  datatype() { return 'exploration3d_msgs/GetFreeSpaceFrontierRepresentatives'; }
};
