; Auto-generated. Do not edit!


(cl:in-package pkg_robot-msg)


;//! \htmlinclude DoCarWashFeedback.msg.html

(cl:defclass <DoCarWashFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_cars_complete
    :reader percent_cars_complete
    :initarg :percent_cars_complete
    :type cl:float
    :initform 0.0))
)

(cl:defclass DoCarWashFeedback (<DoCarWashFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoCarWashFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoCarWashFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_robot-msg:<DoCarWashFeedback> is deprecated: use pkg_robot-msg:DoCarWashFeedback instead.")))

(cl:ensure-generic-function 'percent_cars_complete-val :lambda-list '(m))
(cl:defmethod percent_cars_complete-val ((m <DoCarWashFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_robot-msg:percent_cars_complete-val is deprecated.  Use pkg_robot-msg:percent_cars_complete instead.")
  (percent_cars_complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoCarWashFeedback>) ostream)
  "Serializes a message object of type '<DoCarWashFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_cars_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoCarWashFeedback>) istream)
  "Deserializes a message object of type '<DoCarWashFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_cars_complete) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoCarWashFeedback>)))
  "Returns string type for a message object of type '<DoCarWashFeedback>"
  "pkg_robot/DoCarWashFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoCarWashFeedback)))
  "Returns string type for a message object of type 'DoCarWashFeedback"
  "pkg_robot/DoCarWashFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoCarWashFeedback>)))
  "Returns md5sum for a message object of type '<DoCarWashFeedback>"
  "bf227faed0a440a437bef3d687cc66a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoCarWashFeedback)))
  "Returns md5sum for a message object of type 'DoCarWashFeedback"
  "bf227faed0a440a437bef3d687cc66a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoCarWashFeedback>)))
  "Returns full string definition for message of type '<DoCarWashFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Definimos la retroalimentación (feedback)~%float32 percent_cars_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoCarWashFeedback)))
  "Returns full string definition for message of type 'DoCarWashFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Definimos la retroalimentación (feedback)~%float32 percent_cars_complete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoCarWashFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoCarWashFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DoCarWashFeedback
    (cl:cons ':percent_cars_complete (percent_cars_complete msg))
))
