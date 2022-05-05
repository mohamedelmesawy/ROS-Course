// Generated by gencpp from file test_pkg/Count_wordsResponse.msg
// DO NOT EDIT!


#ifndef TEST_PKG_MESSAGE_COUNT_WORDSRESPONSE_H
#define TEST_PKG_MESSAGE_COUNT_WORDSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test_pkg
{
template <class ContainerAllocator>
struct Count_wordsResponse_
{
  typedef Count_wordsResponse_<ContainerAllocator> Type;

  Count_wordsResponse_()
    : count(0)  {
    }
  Count_wordsResponse_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef int64_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::test_pkg::Count_wordsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_pkg::Count_wordsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Count_wordsResponse_

typedef ::test_pkg::Count_wordsResponse_<std::allocator<void> > Count_wordsResponse;

typedef boost::shared_ptr< ::test_pkg::Count_wordsResponse > Count_wordsResponsePtr;
typedef boost::shared_ptr< ::test_pkg::Count_wordsResponse const> Count_wordsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_pkg::Count_wordsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::test_pkg::Count_wordsResponse_<ContainerAllocator1> & lhs, const ::test_pkg::Count_wordsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::test_pkg::Count_wordsResponse_<ContainerAllocator1> & lhs, const ::test_pkg::Count_wordsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace test_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_pkg::Count_wordsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_pkg::Count_wordsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_pkg::Count_wordsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8dbac33d2eb67bfeeedd516d65fec846";
  }

  static const char* value(const ::test_pkg::Count_wordsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8dbac33d2eb67bfeULL;
  static const uint64_t static_value2 = 0xeedd516d65fec846ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_pkg/Count_wordsResponse";
  }

  static const char* value(const ::test_pkg::Count_wordsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int64 count\n"
"\n"
;
  }

  static const char* value(const ::test_pkg::Count_wordsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Count_wordsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_pkg::Count_wordsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_pkg::Count_wordsResponse_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<int64_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_PKG_MESSAGE_COUNT_WORDSRESPONSE_H