// Generated by gencpp from file navigation_3d_msgs/PathNavigationActionGoal.msg
// DO NOT EDIT!


#ifndef NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONACTIONGOAL_H
#define NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <navigation_3d_msgs/PathNavigationGoal.h>

namespace navigation_3d_msgs
{
template <class ContainerAllocator>
struct PathNavigationActionGoal_
{
  typedef PathNavigationActionGoal_<ContainerAllocator> Type;

  PathNavigationActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  PathNavigationActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PathNavigationActionGoal_

typedef ::navigation_3d_msgs::PathNavigationActionGoal_<std::allocator<void> > PathNavigationActionGoal;

typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationActionGoal > PathNavigationActionGoalPtr;
typedef boost::shared_ptr< ::navigation_3d_msgs::PathNavigationActionGoal const> PathNavigationActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace navigation_3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'navigation_3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/navigation_3d_msgs/msg', '/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/navigation_3d_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb515312941a45024b7191e20b1291d4";
  }

  static const char* value(const ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb515312941a4502ULL;
  static const uint64_t static_value2 = 0x4b7191e20b1291d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation_3d_msgs/PathNavigationActionGoal";
  }

  static const char* value(const ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
PathNavigationGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: navigation_3d_msgs/PathNavigationGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
geometry_msgs/PoseStamped[] path\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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

  static const char* value(const ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathNavigationActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation_3d_msgs::PathNavigationActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::navigation_3d_msgs::PathNavigationGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_3D_MSGS_MESSAGE_PATHNAVIGATIONACTIONGOAL_H