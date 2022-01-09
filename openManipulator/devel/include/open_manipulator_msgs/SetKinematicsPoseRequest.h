// Generated by gencpp from file open_manipulator_msgs/SetKinematicsPoseRequest.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_SETKINEMATICSPOSEREQUEST_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_SETKINEMATICSPOSEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <open_manipulator_msgs/KinematicsPose.h>

namespace open_manipulator_msgs
{
template <class ContainerAllocator>
struct SetKinematicsPoseRequest_
{
  typedef SetKinematicsPoseRequest_<ContainerAllocator> Type;

  SetKinematicsPoseRequest_()
    : planning_group()
    , end_effector_name()
    , kinematics_pose()
    , path_time(0.0)  {
    }
  SetKinematicsPoseRequest_(const ContainerAllocator& _alloc)
    : planning_group(_alloc)
    , end_effector_name(_alloc)
    , kinematics_pose(_alloc)
    , path_time(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _planning_group_type;
  _planning_group_type planning_group;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _end_effector_name_type;
  _end_effector_name_type end_effector_name;

   typedef  ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>  _kinematics_pose_type;
  _kinematics_pose_type kinematics_pose;

   typedef double _path_time_type;
  _path_time_type path_time;





  typedef boost::shared_ptr< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetKinematicsPoseRequest_

typedef ::open_manipulator_msgs::SetKinematicsPoseRequest_<std::allocator<void> > SetKinematicsPoseRequest;

typedef boost::shared_ptr< ::open_manipulator_msgs::SetKinematicsPoseRequest > SetKinematicsPoseRequestPtr;
typedef boost::shared_ptr< ::open_manipulator_msgs::SetKinematicsPoseRequest const> SetKinematicsPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.planning_group == rhs.planning_group &&
    lhs.end_effector_name == rhs.end_effector_name &&
    lhs.kinematics_pose == rhs.kinematics_pose &&
    lhs.path_time == rhs.path_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_manipulator_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4791502d3cd986f50c19faec2e660dc";
  }

  static const char* value(const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4791502d3cd986fULL;
  static const uint64_t static_value2 = 0x50c19faec2e660dcULL;
};

template<class ContainerAllocator>
struct DataType< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_manipulator_msgs/SetKinematicsPoseRequest";
  }

  static const char* value(const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string planning_group\n"
"string end_effector_name\n"
"KinematicsPose kinematics_pose\n"
"float64 path_time\n"
"\n"
"================================================================================\n"
"MSG: open_manipulator_msgs/KinematicsPose\n"
"geometry_msgs/Pose  pose\n"
"float64    max_accelerations_scaling_factor\n"
"float64    max_velocity_scaling_factor\n"
"float64    tolerance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.planning_group);
      stream.next(m.end_effector_name);
      stream.next(m.kinematics_pose);
      stream.next(m.path_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetKinematicsPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_manipulator_msgs::SetKinematicsPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "planning_group: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.planning_group);
    s << indent << "end_effector_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.end_effector_name);
    s << indent << "kinematics_pose: ";
    s << std::endl;
    Printer< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >::stream(s, indent + "  ", v.kinematics_pose);
    s << indent << "path_time: ";
    Printer<double>::stream(s, indent + "  ", v.path_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_SETKINEMATICSPOSEREQUEST_H
