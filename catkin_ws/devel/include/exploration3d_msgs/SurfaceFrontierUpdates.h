// Generated by gencpp from file exploration3d_msgs/SurfaceFrontierUpdates.msg
// DO NOT EDIT!


#ifndef EXPLORATION3D_MSGS_MESSAGE_SURFACEFRONTIERUPDATES_H
#define EXPLORATION3D_MSGS_MESSAGE_SURFACEFRONTIERUPDATES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <exploration3d_msgs/SurfaceFrontierRepresentative.h>
#include <exploration3d_msgs/SurfaceFrontierRepresentative.h>

namespace exploration3d_msgs
{
template <class ContainerAllocator>
struct SurfaceFrontierUpdates_
{
  typedef SurfaceFrontierUpdates_<ContainerAllocator> Type;

  SurfaceFrontierUpdates_()
    : header()
    , new_surface_frontiers()
    , deleted_surface_frontiers()  {
    }
  SurfaceFrontierUpdates_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , new_surface_frontiers(_alloc)
    , deleted_surface_frontiers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> >::other >  _new_surface_frontiers_type;
  _new_surface_frontiers_type new_surface_frontiers;

   typedef std::vector< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> >::other >  _deleted_surface_frontiers_type;
  _deleted_surface_frontiers_type deleted_surface_frontiers;





  typedef boost::shared_ptr< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> const> ConstPtr;

}; // struct SurfaceFrontierUpdates_

typedef ::exploration3d_msgs::SurfaceFrontierUpdates_<std::allocator<void> > SurfaceFrontierUpdates;

typedef boost::shared_ptr< ::exploration3d_msgs::SurfaceFrontierUpdates > SurfaceFrontierUpdatesPtr;
typedef boost::shared_ptr< ::exploration3d_msgs::SurfaceFrontierUpdates const> SurfaceFrontierUpdatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exploration3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'exploration3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "226b1a5e18d595260af183ec7160bc68";
  }

  static const char* value(const ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x226b1a5e18d59526ULL;
  static const uint64_t static_value2 = 0x0af183ec7160bc68ULL;
};

template<class ContainerAllocator>
struct DataType< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exploration3d_msgs/SurfaceFrontierUpdates";
  }

  static const char* value(const ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
exploration3d_msgs/SurfaceFrontierRepresentative[] new_surface_frontiers\n\
exploration3d_msgs/SurfaceFrontierRepresentative[] deleted_surface_frontiers\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: exploration3d_msgs/SurfaceFrontierRepresentative\n\
# A surface frontier is a portion of a large surface frontier contour. If the contour length is less than a certain threshold, the entire contour is represented using a single point p, its length and the two corner points as a frontier.\n\
\n\
# If the contour's length exceeds this threshold, the contour is segmented to portions with some length, where each segment's mid-point and its length is reported as a frontier. Most such segments don't carry corner points. However the two segments at the start/end of the frontier contour carry one corner point.\n\
\n\
# the single 3D point representing a surface frontier\n\
geometry_msgs/Point p\n\
# the length of the frontier in meters\n\
float32 length\n\
# the length of the parent frontier contour in meters\n\
float32 parent_length\n\
# the corner points associated with the frontier representative\n\
geometry_msgs/Point corner_1\n\
geometry_msgs/Point corner_2\n\
# the two corner points of the parent frontier contour containing the frontier\n\
geometry_msgs/Point parent_corner_1\n\
geometry_msgs/Point parent_corner_2\n\
# surface trend vector\n\
geometry_msgs/Point v\n\
# tangent to the surface frontier contour at representative point p\n\
geometry_msgs/Point f_grad\n\
# surface normal at p oriented towards the reachable portion of the environment\n\
geometry_msgs/Point n\n\
# Coeffcient of the quadratic used to approximate surface trend curve\n\
float64 a\n\
# if the representative is from the surface the robot traversed\n\
bool is_floor\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.new_surface_frontiers);
      stream.next(m.deleted_surface_frontiers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SurfaceFrontierUpdates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exploration3d_msgs::SurfaceFrontierUpdates_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "new_surface_frontiers[]" << std::endl;
    for (size_t i = 0; i < v.new_surface_frontiers.size(); ++i)
    {
      s << indent << "  new_surface_frontiers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> >::stream(s, indent + "    ", v.new_surface_frontiers[i]);
    }
    s << indent << "deleted_surface_frontiers[]" << std::endl;
    for (size_t i = 0; i < v.deleted_surface_frontiers.size(); ++i)
    {
      s << indent << "  deleted_surface_frontiers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::exploration3d_msgs::SurfaceFrontierRepresentative_<ContainerAllocator> >::stream(s, indent + "    ", v.deleted_surface_frontiers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXPLORATION3D_MSGS_MESSAGE_SURFACEFRONTIERUPDATES_H
