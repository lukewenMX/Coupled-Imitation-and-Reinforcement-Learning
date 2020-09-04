// Generated by gencpp from file navigation_3d_msgs/NavigationStatus.msg
// DO NOT EDIT!


#ifndef NAVIGATION_3D_MSGS_MESSAGE_NAVIGATIONSTATUS_H
#define NAVIGATION_3D_MSGS_MESSAGE_NAVIGATIONSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace navigation_3d_msgs
{
template <class ContainerAllocator>
struct NavigationStatus_
{
  typedef NavigationStatus_<ContainerAllocator> Type;

  NavigationStatus_()
    : status(0)  {
    }
  NavigationStatus_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;



  enum {
    WAITING = 0u,
    ACTIVE = 1u,
    SUCCEEDED = 3u,
    ABORTED = 4u,
    INIT = 5u,
  };


  typedef boost::shared_ptr< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> const> ConstPtr;

}; // struct NavigationStatus_

typedef ::navigation_3d_msgs::NavigationStatus_<std::allocator<void> > NavigationStatus;

typedef boost::shared_ptr< ::navigation_3d_msgs::NavigationStatus > NavigationStatusPtr;
typedef boost::shared_ptr< ::navigation_3d_msgs::NavigationStatus const> NavigationStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace navigation_3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'navigation_3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/navigation_3d_msgs/msg', '/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/navigation_3d_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5606ec4baf7ca5bbc5263807ea86c814";
  }

  static const char* value(const ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5606ec4baf7ca5bbULL;
  static const uint64_t static_value2 = 0xc5263807ea86c814ULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation_3d_msgs/NavigationStatus";
  }

  static const char* value(const ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 status          # status of the navigator\n\
\n\
uint8 WAITING   = 0   # Waiting for next plan\n\
uint8 ACTIVE    = 1   # plan is being executed\n\
uint8 SUCCEEDED = 3   # plan execution just succeeded\n\
uint8 ABORTED   = 4   # plan execution aborted\n\
uint8 INIT      = 5   # initial state of navigator\n\
";
  }

  static const char* value(const ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigationStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation_3d_msgs::NavigationStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_3D_MSGS_MESSAGE_NAVIGATIONSTATUS_H
