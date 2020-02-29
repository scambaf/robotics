// Generated by gencpp from file pkg_robot/DoCarWashResult.msg
// DO NOT EDIT!


#ifndef PKG_ROBOT_MESSAGE_DOCARWASHRESULT_H
#define PKG_ROBOT_MESSAGE_DOCARWASHRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg_robot
{
template <class ContainerAllocator>
struct DoCarWashResult_
{
  typedef DoCarWashResult_<ContainerAllocator> Type;

  DoCarWashResult_()
    : total_cars_cleaned(0)  {
    }
  DoCarWashResult_(const ContainerAllocator& _alloc)
    : total_cars_cleaned(0)  {
  (void)_alloc;
    }



   typedef int32_t _total_cars_cleaned_type;
  _total_cars_cleaned_type total_cars_cleaned;





  typedef boost::shared_ptr< ::pkg_robot::DoCarWashResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_robot::DoCarWashResult_<ContainerAllocator> const> ConstPtr;

}; // struct DoCarWashResult_

typedef ::pkg_robot::DoCarWashResult_<std::allocator<void> > DoCarWashResult;

typedef boost::shared_ptr< ::pkg_robot::DoCarWashResult > DoCarWashResultPtr;
typedef boost::shared_ptr< ::pkg_robot::DoCarWashResult const> DoCarWashResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_robot::DoCarWashResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pkg_robot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'pkg_robot': ['/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_robot::DoCarWashResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_robot::DoCarWashResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_robot::DoCarWashResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2977e980bbc096b3b3c2043d941b53ab";
  }

  static const char* value(const ::pkg_robot::DoCarWashResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2977e980bbc096b3ULL;
  static const uint64_t static_value2 = 0xb3c2043d941b53abULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_robot/DoCarWashResult";
  }

  static const char* value(const ::pkg_robot::DoCarWashResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Definimos el resultado (result)\n"
"int32 total_cars_cleaned\n"
;
  }

  static const char* value(const ::pkg_robot::DoCarWashResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.total_cars_cleaned);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoCarWashResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_robot::DoCarWashResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_robot::DoCarWashResult_<ContainerAllocator>& v)
  {
    s << indent << "total_cars_cleaned: ";
    Printer<int32_t>::stream(s, indent + "  ", v.total_cars_cleaned);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_ROBOT_MESSAGE_DOCARWASHRESULT_H
