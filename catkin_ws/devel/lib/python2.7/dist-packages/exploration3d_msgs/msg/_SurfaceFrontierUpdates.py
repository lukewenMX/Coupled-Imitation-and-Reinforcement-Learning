# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from exploration3d_msgs/SurfaceFrontierUpdates.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import exploration3d_msgs.msg
import std_msgs.msg

class SurfaceFrontierUpdates(genpy.Message):
  _md5sum = "226b1a5e18d595260af183ec7160bc68"
  _type = "exploration3d_msgs/SurfaceFrontierUpdates"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
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
"""
  __slots__ = ['header','new_surface_frontiers','deleted_surface_frontiers']
  _slot_types = ['std_msgs/Header','exploration3d_msgs/SurfaceFrontierRepresentative[]','exploration3d_msgs/SurfaceFrontierRepresentative[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,new_surface_frontiers,deleted_surface_frontiers

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SurfaceFrontierUpdates, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.new_surface_frontiers is None:
        self.new_surface_frontiers = []
      if self.deleted_surface_frontiers is None:
        self.deleted_surface_frontiers = []
    else:
      self.header = std_msgs.msg.Header()
      self.new_surface_frontiers = []
      self.deleted_surface_frontiers = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.new_surface_frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.new_surface_frontiers:
        _v1 = val1.p
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.length, _x.parent_length))
        _v2 = val1.corner_1
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = val1.corner_2
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.parent_corner_1
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = val1.parent_corner_2
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.v
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.f_grad
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = val1.n
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_dB().pack(_x.a, _x.is_floor))
      length = len(self.deleted_surface_frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.deleted_surface_frontiers:
        _v9 = val1.p
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.length, _x.parent_length))
        _v10 = val1.corner_1
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = val1.corner_2
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = val1.parent_corner_1
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v13 = val1.parent_corner_2
        _x = _v13
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v14 = val1.v
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v15 = val1.f_grad
        _x = _v15
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v16 = val1.n
        _x = _v16
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_dB().pack(_x.a, _x.is_floor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.new_surface_frontiers is None:
        self.new_surface_frontiers = None
      if self.deleted_surface_frontiers is None:
        self.deleted_surface_frontiers = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.new_surface_frontiers = []
      for i in range(0, length):
        val1 = exploration3d_msgs.msg.SurfaceFrontierRepresentative()
        _v17 = val1.p
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.length, _x.parent_length,) = _get_struct_2f().unpack(str[start:end])
        _v18 = val1.corner_1
        _x = _v18
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v19 = val1.corner_2
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = val1.parent_corner_1
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v21 = val1.parent_corner_2
        _x = _v21
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v22 = val1.v
        _x = _v22
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v23 = val1.f_grad
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v24 = val1.n
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.a, _x.is_floor,) = _get_struct_dB().unpack(str[start:end])
        val1.is_floor = bool(val1.is_floor)
        self.new_surface_frontiers.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.deleted_surface_frontiers = []
      for i in range(0, length):
        val1 = exploration3d_msgs.msg.SurfaceFrontierRepresentative()
        _v25 = val1.p
        _x = _v25
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.length, _x.parent_length,) = _get_struct_2f().unpack(str[start:end])
        _v26 = val1.corner_1
        _x = _v26
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v27 = val1.corner_2
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v28 = val1.parent_corner_1
        _x = _v28
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v29 = val1.parent_corner_2
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v30 = val1.v
        _x = _v30
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v31 = val1.f_grad
        _x = _v31
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v32 = val1.n
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.a, _x.is_floor,) = _get_struct_dB().unpack(str[start:end])
        val1.is_floor = bool(val1.is_floor)
        self.deleted_surface_frontiers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.new_surface_frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.new_surface_frontiers:
        _v33 = val1.p
        _x = _v33
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.length, _x.parent_length))
        _v34 = val1.corner_1
        _x = _v34
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v35 = val1.corner_2
        _x = _v35
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v36 = val1.parent_corner_1
        _x = _v36
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v37 = val1.parent_corner_2
        _x = _v37
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v38 = val1.v
        _x = _v38
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v39 = val1.f_grad
        _x = _v39
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v40 = val1.n
        _x = _v40
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_dB().pack(_x.a, _x.is_floor))
      length = len(self.deleted_surface_frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.deleted_surface_frontiers:
        _v41 = val1.p
        _x = _v41
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.length, _x.parent_length))
        _v42 = val1.corner_1
        _x = _v42
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v43 = val1.corner_2
        _x = _v43
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v44 = val1.parent_corner_1
        _x = _v44
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v45 = val1.parent_corner_2
        _x = _v45
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v46 = val1.v
        _x = _v46
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v47 = val1.f_grad
        _x = _v47
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v48 = val1.n
        _x = _v48
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_dB().pack(_x.a, _x.is_floor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.new_surface_frontiers is None:
        self.new_surface_frontiers = None
      if self.deleted_surface_frontiers is None:
        self.deleted_surface_frontiers = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.new_surface_frontiers = []
      for i in range(0, length):
        val1 = exploration3d_msgs.msg.SurfaceFrontierRepresentative()
        _v49 = val1.p
        _x = _v49
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.length, _x.parent_length,) = _get_struct_2f().unpack(str[start:end])
        _v50 = val1.corner_1
        _x = _v50
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v51 = val1.corner_2
        _x = _v51
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v52 = val1.parent_corner_1
        _x = _v52
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v53 = val1.parent_corner_2
        _x = _v53
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v54 = val1.v
        _x = _v54
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v55 = val1.f_grad
        _x = _v55
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v56 = val1.n
        _x = _v56
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.a, _x.is_floor,) = _get_struct_dB().unpack(str[start:end])
        val1.is_floor = bool(val1.is_floor)
        self.new_surface_frontiers.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.deleted_surface_frontiers = []
      for i in range(0, length):
        val1 = exploration3d_msgs.msg.SurfaceFrontierRepresentative()
        _v57 = val1.p
        _x = _v57
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.length, _x.parent_length,) = _get_struct_2f().unpack(str[start:end])
        _v58 = val1.corner_1
        _x = _v58
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v59 = val1.corner_2
        _x = _v59
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v60 = val1.parent_corner_1
        _x = _v60
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v61 = val1.parent_corner_2
        _x = _v61
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v62 = val1.v
        _x = _v62
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v63 = val1.f_grad
        _x = _v63
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v64 = val1.n
        _x = _v64
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.a, _x.is_floor,) = _get_struct_dB().unpack(str[start:end])
        val1.is_floor = bool(val1.is_floor)
        self.deleted_surface_frontiers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_dB = None
def _get_struct_dB():
    global _struct_dB
    if _struct_dB is None:
        _struct_dB = struct.Struct("<dB")
    return _struct_dB
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
