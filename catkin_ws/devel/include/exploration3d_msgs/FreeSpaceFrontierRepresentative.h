// Generated by gencpp from file exploration3d_msgs/FreeSpaceFrontierRepresentative.msg
// DO NOT EDIT!


#ifndef EXPLORATION3D_MSGS_MESSAGE_FREESPACEFRONTIERREPRESENTATIVE_H
#define EXPLORATION3D_MSGS_MESSAGE_FREESPACEFRONTIERREPRESENTATIVE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>

namespace exploration3d_msgs
{
template <class ContainerAllocator>
struct FreeSpaceFrontierRepresentative_
{
  typedef FreeSpaceFrontierRepresentative_<ContainerAllocator> Type;

  FreeSpaceFrontierRepresentative_()
    : p()
    , n()
    , nvx(0)  {
    }
  FreeSpaceFrontierRepresentative_(const ContainerAllocator& _alloc)
    : p(_alloc)
    , n(_alloc)
    , nvx(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p_type;
  _p_type p;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _n_type;
  _n_type n;

   typedef uint32_t _nvx_type;
  _nvx_type nvx;





  typedef boost::shared_ptr< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> const> ConstPtr;

}; // struct FreeSpaceFrontierRepresentative_

typedef ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<std::allocator<void> > FreeSpaceFrontierRepresentative;

typedef boost::shared_ptr< ::exploration3d_msgs::FreeSpaceFrontierRepresentative > FreeSpaceFrontierRepresentativePtr;
typedef boost::shared_ptr< ::exploration3d_msgs::FreeSpaceFrontierRepresentative const> FreeSpaceFrontierRepresentativeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exploration3d_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'exploration3d_msgs': ['/home/lukewen/gym_gazebo/gym_gazebo/envs/installation/catkin_ws/src/nav_common/exploration3d_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2040b5472a070e8f5b7ea2b2735cd22";
  }

  static const char* value(const ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2040b5472a070e8ULL;
  static const uint64_t static_value2 = 0xf5b7ea2b2735cd22ULL;
};

template<class ContainerAllocator>
struct DataType< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exploration3d_msgs/FreeSpaceFrontierRepresentative";
  }

  static const char* value(const ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A freespace frontier representative is the centroid of a group of connected freespace frontier voxels of some size \n\
\n\
# the centroid of the freespace frontier voxel cluster\n\
geometry_msgs/Point p\n\
# the normal to the freespace frontier voxel surface at centroid\n\
geometry_msgs/Vector3 n\n\
# number of voxels in the freespace frontier cluster\n\
uint32 nvx\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.p);
      stream.next(m.n);
      stream.next(m.nvx);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FreeSpaceFrontierRepresentative_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exploration3d_msgs::FreeSpaceFrontierRepresentative_<ContainerAllocator>& v)
  {
    s << indent << "p: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p);
    s << indent << "n: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.n);
    s << indent << "nvx: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.nvx);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXPLORATION3D_MSGS_MESSAGE_FREESPACEFRONTIERREPRESENTATIVE_H
