// Generated by gencpp from file turtlesim/RemoveCircleRequest.msg
// DO NOT EDIT!


#ifndef TURTLESIM_MESSAGE_REMOVECIRCLEREQUEST_H
#define TURTLESIM_MESSAGE_REMOVECIRCLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtlesim
{
template <class ContainerAllocator>
struct RemoveCircleRequest_
{
  typedef RemoveCircleRequest_<ContainerAllocator> Type;

  RemoveCircleRequest_()
    : id(0)  {
    }
  RemoveCircleRequest_(const ContainerAllocator& _alloc)
    : id(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;




  typedef boost::shared_ptr< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RemoveCircleRequest_

typedef ::turtlesim::RemoveCircleRequest_<std::allocator<void> > RemoveCircleRequest;

typedef boost::shared_ptr< ::turtlesim::RemoveCircleRequest > RemoveCircleRequestPtr;
typedef boost::shared_ptr< ::turtlesim::RemoveCircleRequest const> RemoveCircleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlesim::RemoveCircleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlesim

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'turtlesim': ['/home/alessio/workspaces/src/turtlesim/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "541b98e964705918fa8eb206b65347b3";
  }

  static const char* value(const ::turtlesim::RemoveCircleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x541b98e964705918ULL;
  static const uint64_t static_value2 = 0xfa8eb206b65347b3ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlesim/RemoveCircleRequest";
  }

  static const char* value(const ::turtlesim::RemoveCircleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n\
";
  }

  static const char* value(const ::turtlesim::RemoveCircleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RemoveCircleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlesim::RemoveCircleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlesim::RemoveCircleRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLESIM_MESSAGE_REMOVECIRCLEREQUEST_H