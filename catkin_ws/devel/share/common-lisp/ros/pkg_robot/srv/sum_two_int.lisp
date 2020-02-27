; Auto-generated. Do not edit!


(cl:in-package pkg_robot-srv)


;//! \htmlinclude sum_two_int-request.msg.html

(cl:defclass <sum_two_int-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass sum_two_int-request (<sum_two_int-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum_two_int-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum_two_int-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_robot-srv:<sum_two_int-request> is deprecated: use pkg_robot-srv:sum_two_int-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <sum_two_int-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_robot-srv:a-val is deprecated.  Use pkg_robot-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <sum_two_int-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_robot-srv:b-val is deprecated.  Use pkg_robot-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum_two_int-request>) ostream)
  "Serializes a message object of type '<sum_two_int-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum_two_int-request>) istream)
  "Deserializes a message object of type '<sum_two_int-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum_two_int-request>)))
  "Returns string type for a service object of type '<sum_two_int-request>"
  "pkg_robot/sum_two_intRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_int-request)))
  "Returns string type for a service object of type 'sum_two_int-request"
  "pkg_robot/sum_two_intRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum_two_int-request>)))
  "Returns md5sum for a message object of type '<sum_two_int-request>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum_two_int-request)))
  "Returns md5sum for a message object of type 'sum_two_int-request"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum_two_int-request>)))
  "Returns full string definition for message of type '<sum_two_int-request>"
  (cl:format cl:nil "~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum_two_int-request)))
  "Returns full string definition for message of type 'sum_two_int-request"
  (cl:format cl:nil "~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum_two_int-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum_two_int-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sum_two_int-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude sum_two_int-response.msg.html

(cl:defclass <sum_two_int-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass sum_two_int-response (<sum_two_int-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum_two_int-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum_two_int-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_robot-srv:<sum_two_int-response> is deprecated: use pkg_robot-srv:sum_two_int-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <sum_two_int-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_robot-srv:sum-val is deprecated.  Use pkg_robot-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum_two_int-response>) ostream)
  "Serializes a message object of type '<sum_two_int-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum_two_int-response>) istream)
  "Deserializes a message object of type '<sum_two_int-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum_two_int-response>)))
  "Returns string type for a service object of type '<sum_two_int-response>"
  "pkg_robot/sum_two_intResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_int-response)))
  "Returns string type for a service object of type 'sum_two_int-response"
  "pkg_robot/sum_two_intResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum_two_int-response>)))
  "Returns md5sum for a message object of type '<sum_two_int-response>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum_two_int-response)))
  "Returns md5sum for a message object of type 'sum_two_int-response"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum_two_int-response>)))
  "Returns full string definition for message of type '<sum_two_int-response>"
  (cl:format cl:nil "~%int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum_two_int-response)))
  "Returns full string definition for message of type 'sum_two_int-response"
  (cl:format cl:nil "~%int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum_two_int-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum_two_int-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sum_two_int-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sum_two_int)))
  'sum_two_int-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sum_two_int)))
  'sum_two_int-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_int)))
  "Returns string type for a service object of type '<sum_two_int>"
  "pkg_robot/sum_two_int")