// Generated by gencpp from file yocs_msgs/NavigationControl.msg
// DO NOT EDIT!


#ifndef YOCS_MSGS_MESSAGE_NAVIGATIONCONTROL_H
#define YOCS_MSGS_MESSAGE_NAVIGATIONCONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace yocs_msgs
{
template <class ContainerAllocator>
struct NavigationControl_
{
  typedef NavigationControl_<ContainerAllocator> Type;

  NavigationControl_()
    : control(0)
    , goal_name()  {
    }
  NavigationControl_(const ContainerAllocator& _alloc)
    : control(0)
    , goal_name(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _control_type;
  _control_type control;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _goal_name_type;
  _goal_name_type goal_name;



  enum {
    STOP = 0,
    START = 1,
    PAUSE = 2,
  };


  typedef boost::shared_ptr< ::yocs_msgs::NavigationControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yocs_msgs::NavigationControl_<ContainerAllocator> const> ConstPtr;

}; // struct NavigationControl_

typedef ::yocs_msgs::NavigationControl_<std::allocator<void> > NavigationControl;

typedef boost::shared_ptr< ::yocs_msgs::NavigationControl > NavigationControlPtr;
typedef boost::shared_ptr< ::yocs_msgs::NavigationControl const> NavigationControlConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yocs_msgs::NavigationControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yocs_msgs::NavigationControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yocs_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'yocs_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg', '/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yocs_msgs::NavigationControl_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yocs_msgs::NavigationControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yocs_msgs::NavigationControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2ddf02b376d1d00aed5addfb5cfe0ba";
  }

  static const char* value(const ::yocs_msgs::NavigationControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2ddf02b376d1d00ULL;
  static const uint64_t static_value2 = 0xaed5addfb5cfe0baULL;
};

template<class ContainerAllocator>
struct DataType< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yocs_msgs/NavigationControl";
  }

  static const char* value(const ::yocs_msgs::NavigationControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# control the way point/trajectory navigation\n\
int8 control\n\
\n\
int8 STOP  = 0\n\
int8 START = 1\n\
int8 PAUSE = 2\n\
\n\
# name of the way point(s) / trajectory to be execute\n\
# leave empty, when stopping or pausing\n\
string goal_name\n\
";
  }

  static const char* value(const ::yocs_msgs::NavigationControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.control);
      stream.next(m.goal_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigationControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yocs_msgs::NavigationControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yocs_msgs::NavigationControl_<ContainerAllocator>& v)
  {
    s << indent << "control: ";
    Printer<int8_t>::stream(s, indent + "  ", v.control);
    s << indent << "goal_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.goal_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOCS_MSGS_MESSAGE_NAVIGATIONCONTROL_H
