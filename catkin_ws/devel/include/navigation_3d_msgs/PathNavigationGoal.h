// Generated by gencpp from file navigation_3d_msgs/PathNavigationGoal.msg
// DO NOT EDIT!


#ifndef NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONGOAL_H
#define NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace navigation_3d_msgs
{
template <class ContainerAllocator>
struct PathNavigationGoal_
{
  typedef PathNavigationGoal_<ContainerAllocator> Type;

  PathNavigationGoal_()
    : path()  {
    }
  PathNavigationGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PathNavigationGoal_

typedef ::navigation_3d_msgs::PathNavigationGoal_<std::allocator<void> > PathNavigationGoal;

typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationGoal > PathNavigationGoalPtr;
typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationGoal const> PathNavigationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace navigation_3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'navigation_3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/navigation_3d_msgs/msg', '/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/navigation_3d_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fde6cfd88a2e9547561cecdb69ccf8c";
  }

  static const char* value(const ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fde6cfd88a2e954ULL;
  static const uint64_t static_value2 = 0x7561cecdb69ccf8cULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation_3d_msgs/PathNavigationGoal";
  }

  static const char* value(const ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
geometry_msgs/PoseStamped[] path\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathNavigationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator>& v)
  {
    s << indent << "path[]" << std::endl;
    for (size_t i = 0; i < v.path.size(); ++i)
    {
      s << indent << "  path[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.path[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONGOAL_H
