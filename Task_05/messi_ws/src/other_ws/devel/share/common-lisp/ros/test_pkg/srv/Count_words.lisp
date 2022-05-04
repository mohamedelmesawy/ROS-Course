; Auto-generated. Do not edit!


(cl:in-package test_pkg-srv)


;//! \htmlinclude Count_words-request.msg.html

(cl:defclass <Count_words-request> (roslisp-msg-protocol:ros-message)
  ((line
    :reader line
    :initarg :line
    :type cl:string
    :initform ""))
)

(cl:defclass Count_words-request (<Count_words-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Count_words-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Count_words-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_pkg-srv:<Count_words-request> is deprecated: use test_pkg-srv:Count_words-request instead.")))

(cl:ensure-generic-function 'line-val :lambda-list '(m))
(cl:defmethod line-val ((m <Count_words-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-srv:line-val is deprecated.  Use test_pkg-srv:line instead.")
  (line m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Count_words-request>) ostream)
  "Serializes a message object of type '<Count_words-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'line))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Count_words-request>) istream)
  "Deserializes a message object of type '<Count_words-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'line) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'line) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Count_words-request>)))
  "Returns string type for a service object of type '<Count_words-request>"
  "test_pkg/Count_wordsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count_words-request)))
  "Returns string type for a service object of type 'Count_words-request"
  "test_pkg/Count_wordsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Count_words-request>)))
  "Returns md5sum for a message object of type '<Count_words-request>"
  "0631a1573c647362eba416a69e271fd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count_words-request)))
  "Returns md5sum for a message object of type 'Count_words-request"
  "0631a1573c647362eba416a69e271fd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Count_words-request>)))
  "Returns full string definition for message of type '<Count_words-request>"
  (cl:format cl:nil "string line~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Count_words-request)))
  "Returns full string definition for message of type 'Count_words-request"
  (cl:format cl:nil "string line~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Count_words-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'line))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Count_words-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Count_words-request
    (cl:cons ':line (line msg))
))
;//! \htmlinclude Count_words-response.msg.html

(cl:defclass <Count_words-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass Count_words-response (<Count_words-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Count_words-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Count_words-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_pkg-srv:<Count_words-response> is deprecated: use test_pkg-srv:Count_words-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Count_words-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-srv:count-val is deprecated.  Use test_pkg-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Count_words-response>) ostream)
  "Serializes a message object of type '<Count_words-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Count_words-response>) istream)
  "Deserializes a message object of type '<Count_words-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Count_words-response>)))
  "Returns string type for a service object of type '<Count_words-response>"
  "test_pkg/Count_wordsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count_words-response)))
  "Returns string type for a service object of type 'Count_words-response"
  "test_pkg/Count_wordsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Count_words-response>)))
  "Returns md5sum for a message object of type '<Count_words-response>"
  "0631a1573c647362eba416a69e271fd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count_words-response)))
  "Returns md5sum for a message object of type 'Count_words-response"
  "0631a1573c647362eba416a69e271fd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Count_words-response>)))
  "Returns full string definition for message of type '<Count_words-response>"
  (cl:format cl:nil "~%int64 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Count_words-response)))
  "Returns full string definition for message of type 'Count_words-response"
  (cl:format cl:nil "~%int64 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Count_words-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Count_words-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Count_words-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Count_words)))
  'Count_words-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Count_words)))
  'Count_words-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count_words)))
  "Returns string type for a service object of type '<Count_words>"
  "test_pkg/Count_words")