; Auto-generated. Do not edit!


(cl:in-package test_pkg-srv)


;//! \htmlinclude Adding_numbers-request.msg.html

(cl:defclass <Adding_numbers-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Adding_numbers-request (<Adding_numbers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Adding_numbers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Adding_numbers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_pkg-srv:<Adding_numbers-request> is deprecated: use test_pkg-srv:Adding_numbers-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Adding_numbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-srv:x-val is deprecated.  Use test_pkg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Adding_numbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-srv:y-val is deprecated.  Use test_pkg-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Adding_numbers-request>) ostream)
  "Serializes a message object of type '<Adding_numbers-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Adding_numbers-request>) istream)
  "Deserializes a message object of type '<Adding_numbers-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Adding_numbers-request>)))
  "Returns string type for a service object of type '<Adding_numbers-request>"
  "test_pkg/Adding_numbersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Adding_numbers-request)))
  "Returns string type for a service object of type 'Adding_numbers-request"
  "test_pkg/Adding_numbersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Adding_numbers-request>)))
  "Returns md5sum for a message object of type '<Adding_numbers-request>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Adding_numbers-request)))
  "Returns md5sum for a message object of type 'Adding_numbers-request"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Adding_numbers-request>)))
  "Returns full string definition for message of type '<Adding_numbers-request>"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Adding_numbers-request)))
  "Returns full string definition for message of type 'Adding_numbers-request"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Adding_numbers-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Adding_numbers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Adding_numbers-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Adding_numbers-response.msg.html

(cl:defclass <Adding_numbers-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass Adding_numbers-response (<Adding_numbers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Adding_numbers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Adding_numbers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_pkg-srv:<Adding_numbers-response> is deprecated: use test_pkg-srv:Adding_numbers-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <Adding_numbers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-srv:sum-val is deprecated.  Use test_pkg-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Adding_numbers-response>) ostream)
  "Serializes a message object of type '<Adding_numbers-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Adding_numbers-response>) istream)
  "Deserializes a message object of type '<Adding_numbers-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Adding_numbers-response>)))
  "Returns string type for a service object of type '<Adding_numbers-response>"
  "test_pkg/Adding_numbersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Adding_numbers-response)))
  "Returns string type for a service object of type 'Adding_numbers-response"
  "test_pkg/Adding_numbersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Adding_numbers-response>)))
  "Returns md5sum for a message object of type '<Adding_numbers-response>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Adding_numbers-response)))
  "Returns md5sum for a message object of type 'Adding_numbers-response"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Adding_numbers-response>)))
  "Returns full string definition for message of type '<Adding_numbers-response>"
  (cl:format cl:nil "~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Adding_numbers-response)))
  "Returns full string definition for message of type 'Adding_numbers-response"
  (cl:format cl:nil "~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Adding_numbers-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Adding_numbers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Adding_numbers-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Adding_numbers)))
  'Adding_numbers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Adding_numbers)))
  'Adding_numbers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Adding_numbers)))
  "Returns string type for a service object of type '<Adding_numbers>"
  "test_pkg/Adding_numbers")