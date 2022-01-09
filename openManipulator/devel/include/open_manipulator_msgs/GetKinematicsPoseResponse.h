// Generated by gencpp from file open_manipulator_msgs/GetKinematicsPoseResponse.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_GETKINEMATICSPOSERESPONSE_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_GETKINEMATICSPOSERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <open_manipulator_msgs/KinematicsPose.h>

namespace open_manipulator_msgs
{
template <class ContainerAllocator>
struct GetKinematicsPoseResponse_
{
  typedef GetKinematicsPoseResponse_<ContainerAllocator> Type;

  GetKinematicsPoseResponse_()
    : header()
    , kinematics_pose()  {
    }
  GetKinematicsPoseResponse_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , kinematics_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator>  _kinematics_pose_type;
  _kinematics_pose_type kinematics_pose;





  typedef boost::shared_ptr< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetKinematicsPoseResponse_

typedef ::open_manipulator_msgs::GetKinematicsPoseResponse_<std::allocator<void> > GetKinematicsPoseResponse;

typedef boost::shared_ptr< ::open_manipulator_msgs::GetKinematicsPoseResponse > GetKinematicsPoseResponsePtr;
typedef boost::shared_ptr< ::open_manipulator_msgs::GetKinematicsPoseResponse const> GetKinematicsPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.kinematics_pose == rhs.kinematics_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_manipulator_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b64b73433e2775c9c4b7e1a00dd6995";
  }

  static const char* value(const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b64b73433e2775cULL;
  static const uint64_t static_value2 = 0x9c4b7e1a00dd6995ULL;
};

template<class ContainerAllocator>
struct DataType< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_manipulator_msgs/GetKinematicsPoseResponse";
  }

  static const char* value(const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"KinematicsPose kinematics_pose\n"
"\n"
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

  static const char* value(const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.kinematics_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetKinematicsPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_manipulator_msgs::GetKinematicsPoseResponse_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "kinematics_pose: ";
    s << std::endl;
    Printer< ::open_manipulator_msgs::KinematicsPose_<ContainerAllocator> >::stream(s, indent + "  ", v.kinematics_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_GETKINEMATICSPOSERESPONSE_H