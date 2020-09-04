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

class FreeSpaceFrontierRepresentative {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p = null;
      this.n = null;
      this.nvx = null;
    }
    else {
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('nvx')) {
        this.nvx = initObj.nvx
      }
      else {
        this.nvx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FreeSpaceFrontierRepresentative
    // Serialize message field [p]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p, buffer, bufferOffset);
    // Serialize message field [n]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.n, buffer, bufferOffset);
    // Serialize message field [nvx]
    bufferOffset = _serializer.uint32(obj.nvx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FreeSpaceFrontierRepresentative
    let len;
    let data = new FreeSpaceFrontierRepresentative(null);
    // Deserialize message field [p]
    data.p = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [n]
    data.n = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [nvx]
    data.nvx = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration3d_msgs/FreeSpaceFrontierRepresentative';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2040b5472a070e8f5b7ea2b2735cd22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FreeSpaceFrontierRepresentative(null);
    if (msg.p !== undefined) {
      resolved.p = geometry_msgs.msg.Point.Resolve(msg.p)
    }
    else {
      resolved.p = new geometry_msgs.msg.Point()
    }

    if (msg.n !== undefined) {
      resolved.n = geometry_msgs.msg.Vector3.Resolve(msg.n)
    }
    else {
      resolved.n = new geometry_msgs.msg.Vector3()
    }

    if (msg.nvx !== undefined) {
      resolved.nvx = msg.nvx;
    }
    else {
      resolved.nvx = 0
    }

    return resolved;
    }
};

module.exports = FreeSpaceFrontierRepresentative;
