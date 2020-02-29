// Generated by gencpp from file pkg_robot/DoCarWashActionGoal.msg
// DO NOT EDIT!


#ifndef PKG_ROBOT_MESSAGE_DOCARWASHACTIONGOAL_H
#define PKG_ROBOT_MESSAGE_DOCARWASHACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <pkg_robot/DoCarWashGoal.h>

namespace pkg_robot
{
template <class ContainerAllocator>
struct DoCarWashActionGoal_
{
  typedef DoCarWashActionGoal_<ContainerAllocator> Type;

  DoCarWashActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  DoCarWashActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::pkg_robot::DoCarWashGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct DoCarWashActionGoal_

typedef ::pkg_robot::DoCarWashActionGoal_<std::allocator<void> > DoCarWashActionGoal;

typedef boost::shared_ptr< ::pkg_robot::DoCarWashActionGoal > DoCarWashActionGoalPtr;
typedef boost::shared_ptr< ::pkg_robot::DoCarWashActionGoal const> DoCarWashActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pkg_robot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'pkg_robot': ['/home/samu/robotics/catkin_ws/devel/share/pkg_robot/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9369cf9217991de25d4b2b62ce913440";
  }

  static const char* value(const ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9369cf9217991de2ULL;
  static const uint64_t static_value2 = 0x5d4b2b62ce913440ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_robot/DoCarWashActionGoal";
  }

  static const char* value(const ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"DoCarWashGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pkg_robot/DoCarWashGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Definimos el objetivo (goal)\n"
"int32 number_of_cars \n"
;
  }

  static const char* value(const ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoCarWashActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_robot::DoCarWashActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::pkg_robot::DoCarWashGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_ROBOT_MESSAGE_DOCARWASHACTIONGOAL_H