// Generated by gencpp from file fetchit_challenge/SchunkMachineActionGoal.msg
// DO NOT EDIT!


#ifndef FETCHIT_CHALLENGE_MESSAGE_SCHUNKMACHINEACTIONGOAL_H
#define FETCHIT_CHALLENGE_MESSAGE_SCHUNKMACHINEACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <fetchit_challenge/SchunkMachineGoal.h>

namespace fetchit_challenge
{
template <class ContainerAllocator>
struct SchunkMachineActionGoal_
{
  typedef SchunkMachineActionGoal_<ContainerAllocator> Type;

  SchunkMachineActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  SchunkMachineActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::fetchit_challenge::SchunkMachineGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct SchunkMachineActionGoal_

typedef ::fetchit_challenge::SchunkMachineActionGoal_<std::allocator<void> > SchunkMachineActionGoal;

typedef boost::shared_ptr< ::fetchit_challenge::SchunkMachineActionGoal > SchunkMachineActionGoalPtr;
typedef boost::shared_ptr< ::fetchit_challenge::SchunkMachineActionGoal const> SchunkMachineActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fetchit_challenge

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'fetchit_challenge': ['/home/samu/robotics/catkin_ws/devel/share/fetchit_challenge/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5728def57f92693cebb0d7ab60afbf4e";
  }

  static const char* value(const ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5728def57f92693cULL;
  static const uint64_t static_value2 = 0xebb0d7ab60afbf4eULL;
};

template<class ContainerAllocator>
struct DataType< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fetchit_challenge/SchunkMachineActionGoal";
  }

  static const char* value(const ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"SchunkMachineGoal goal\n"
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
"MSG: fetchit_challenge/SchunkMachineGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint32 OPEN=0\n"
"uint32 CLOSE=1\n"
"uint32 START_OPERATION=2\n"
"uint32 END_OPERATION=3\n"
"uint32 state \n"
;
  }

  static const char* value(const ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SchunkMachineActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fetchit_challenge::SchunkMachineActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::fetchit_challenge::SchunkMachineGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FETCHIT_CHALLENGE_MESSAGE_SCHUNKMACHINEACTIONGOAL_H
