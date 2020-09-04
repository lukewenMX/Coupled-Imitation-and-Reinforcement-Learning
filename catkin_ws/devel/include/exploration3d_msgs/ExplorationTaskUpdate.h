// Generated by gencpp from file exploration3d_msgs/ExplorationTaskUpdate.msg
// DO NOT EDIT!


#ifndef EXPLORATION3D_MSGS_MESSAGE_EXPLORATIONTASKUPDATE_H
#define EXPLORATION3D_MSGS_MESSAGE_EXPLORATIONTASKUPDATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace exploration3d_msgs
{
template <class ContainerAllocator>
struct ExplorationTaskUpdate_
{
  typedef ExplorationTaskUpdate_<ContainerAllocator> Type;

  ExplorationTaskUpdate_()
    : robot_id()
    , task_id(0)
    , success(false)
    , visited_poses()  {
    }
  ExplorationTaskUpdate_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , task_id(0)
    , success(false)
    , visited_poses(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_id_type;
  _robot_id_type robot_id;

   typedef uint16_t _task_id_type;
  _task_id_type task_id;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _visited_poses_type;
  _visited_poses_type visited_poses;





  typedef boost::shared_ptr< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct ExplorationTaskUpdate_

typedef ::exploration3d_msgs::ExplorationTaskUpdate_<std::allocator<void> > ExplorationTaskUpdate;

typedef boost::shared_ptr< ::exploration3d_msgs::ExplorationTaskUpdate > ExplorationTaskUpdatePtr;
typedef boost::shared_ptr< ::exploration3d_msgs::ExplorationTaskUpdate const> ExplorationTaskUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exploration3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'exploration3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee97353beddf617331562d4c082cdaad";
  }

  static const char* value(const ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee97353beddf6173ULL;
  static const uint64_t static_value2 = 0x31562d4c082cdaadULL;
};

template<class ContainerAllocator>
struct DataType< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exploration3d_msgs/ExplorationTaskUpdate";
  }

  static const char* value(const ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The ID of the robot to which this exploration task update belongs to\n\
string robot_id\n\
# The sequence ID of the exploration task\n\
uint16 task_id\n\
# Has the exploration task being successfully completed\n\
bool success\n\
# If unsuccesful, what was the sequence of view poses the robot successfully visited\n\
geometry_msgs/Pose[] visited_poses\n\
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

  static const char* value(const ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.task_id);
      stream.next(m.success);
      stream.next(m.visited_poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExplorationTaskUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exploration3d_msgs::ExplorationTaskUpdate_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_id);
    s << indent << "task_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "visited_poses[]" << std::endl;
    for (size_t i = 0; i < v.visited_poses.size(); ++i)
    {
      s << indent << "  visited_poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.visited_poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXPLORATION3D_MSGS_MESSAGE_EXPLORATIONTASKUPDATE_H