// Generated by gencpp from file test_pkg/Count_words.msg
// DO NOT EDIT!


#ifndef TEST_PKG_MESSAGE_COUNT_WORDS_H
#define TEST_PKG_MESSAGE_COUNT_WORDS_H

#include <ros/service_traits.h>


#include <test_pkg/Count_wordsRequest.h>
#include <test_pkg/Count_wordsResponse.h>


namespace test_pkg
{

struct Count_words
{

typedef Count_wordsRequest Request;
typedef Count_wordsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Count_words
} // namespace test_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test_pkg::Count_words > {
  static const char* value()
  {
    return "0631a1573c647362eba416a69e271fd9";
  }

  static const char* value(const ::test_pkg::Count_words&) { return value(); }
};

template<>
struct DataType< ::test_pkg::Count_words > {
  static const char* value()
  {
    return "test_pkg/Count_words";
  }

  static const char* value(const ::test_pkg::Count_words&) { return value(); }
};


// service_traits::MD5Sum< ::test_pkg::Count_wordsRequest> should match
// service_traits::MD5Sum< ::test_pkg::Count_words >
template<>
struct MD5Sum< ::test_pkg::Count_wordsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test_pkg::Count_words >::value();
  }
  static const char* value(const ::test_pkg::Count_wordsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_pkg::Count_wordsRequest> should match
// service_traits::DataType< ::test_pkg::Count_words >
template<>
struct DataType< ::test_pkg::Count_wordsRequest>
{
  static const char* value()
  {
    return DataType< ::test_pkg::Count_words >::value();
  }
  static const char* value(const ::test_pkg::Count_wordsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test_pkg::Count_wordsResponse> should match
// service_traits::MD5Sum< ::test_pkg::Count_words >
template<>
struct MD5Sum< ::test_pkg::Count_wordsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test_pkg::Count_words >::value();
  }
  static const char* value(const ::test_pkg::Count_wordsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_pkg::Count_wordsResponse> should match
// service_traits::DataType< ::test_pkg::Count_words >
template<>
struct DataType< ::test_pkg::Count_wordsResponse>
{
  static const char* value()
  {
    return DataType< ::test_pkg::Count_words >::value();
  }
  static const char* value(const ::test_pkg::Count_wordsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST_PKG_MESSAGE_COUNT_WORDS_H
