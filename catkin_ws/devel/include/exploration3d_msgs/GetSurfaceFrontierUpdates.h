// Generated by gencpp from file exploration3d_msgs/GetSurfaceFrontierUpdates.msg
// DO NOT EDIT!


#ifndef EXPLORATION3D_MSGS_MESSAGE_GETSURFACEFRONTIERUPDATES_H
#define EXPLORATION3D_MSGS_MESSAGE_GETSURFACEFRONTIERUPDATES_H

#include <ros/service_traits.h>


#include <exploration3d_msgs/GetSurfaceFrontierUpdatesRequest.h>
#include <exploration3d_msgs/GetSurfaceFrontierUpdatesResponse.h>


namespace exploration3d_msgs
{

struct GetSurfaceFrontierUpdates
{

typedef GetSurfaceFrontierUpdatesRequest Request;
typedef GetSurfaceFrontierUpdatesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetSurfaceFrontierUpdates
} // namespace exploration3d_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdates > {
  static const char* value()
  {
    return "2d45db01356448270de7d3f64bbb4d6c";
  }

  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdates&) { return value(); }
};

template<>
struct DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdates > {
  static const char* value()
  {
    return "exploration3d_msgs/GetSurfaceFrontierUpdates";
  }

  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdates&) { return value(); }
};


// service_traits::MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest> should match 
// service_traits::MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdates > 
template<>
struct MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdates >::value();
  }
  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest> should match 
// service_traits::DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdates > 
template<>
struct DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest>
{
  static const char* value()
  {
    return DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdates >::value();
  }
  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdatesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse> should match 
// service_traits::MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdates > 
template<>
struct MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::exploration3d_msgs::GetSurfaceFrontierUpdates >::value();
  }
  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse> should match 
// service_traits::DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdates > 
template<>
struct DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse>
{
  static const char* value()
  {
    return DataType< ::exploration3d_msgs::GetSurfaceFrontierUpdates >::value();
  }
  static const char* value(const ::exploration3d_msgs::GetSurfaceFrontierUpdatesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXPLORATION3D_MSGS_MESSAGE_GETSURFACEFRONTIERUPDATES_H
