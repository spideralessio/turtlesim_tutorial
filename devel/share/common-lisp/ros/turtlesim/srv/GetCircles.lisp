; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude GetCircles-request.msg.html

(cl:defclass <GetCircles-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCircles-request (<GetCircles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCircles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCircles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetCircles-request> is deprecated: use turtlesim-srv:GetCircles-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCircles-request>) ostream)
  "Serializes a message object of type '<GetCircles-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCircles-request>) istream)
  "Deserializes a message object of type '<GetCircles-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCircles-request>)))
  "Returns string type for a service object of type '<GetCircles-request>"
  "turtlesim/GetCirclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCircles-request)))
  "Returns string type for a service object of type 'GetCircles-request"
  "turtlesim/GetCirclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCircles-request>)))
  "Returns md5sum for a message object of type '<GetCircles-request>"
  "2b1b1441bc75b4f59372da8dedbed3bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCircles-request)))
  "Returns md5sum for a message object of type 'GetCircles-request"
  "2b1b1441bc75b4f59372da8dedbed3bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCircles-request>)))
  "Returns full string definition for message of type '<GetCircles-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCircles-request)))
  "Returns full string definition for message of type 'GetCircles-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCircles-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCircles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCircles-request
))
;//! \htmlinclude GetCircles-response.msg.html

(cl:defclass <GetCircles-response> (roslisp-msg-protocol:ros-message)
  ((circles
    :reader circles
    :initarg :circles
    :type (cl:vector turtlesim-msg:Circle)
   :initform (cl:make-array 0 :element-type 'turtlesim-msg:Circle :initial-element (cl:make-instance 'turtlesim-msg:Circle))))
)

(cl:defclass GetCircles-response (<GetCircles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCircles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCircles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetCircles-response> is deprecated: use turtlesim-srv:GetCircles-response instead.")))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <GetCircles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:circles-val is deprecated.  Use turtlesim-srv:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCircles-response>) ostream)
  "Serializes a message object of type '<GetCircles-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCircles-response>) istream)
  "Deserializes a message object of type '<GetCircles-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'circles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'circles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'turtlesim-msg:Circle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCircles-response>)))
  "Returns string type for a service object of type '<GetCircles-response>"
  "turtlesim/GetCirclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCircles-response)))
  "Returns string type for a service object of type 'GetCircles-response"
  "turtlesim/GetCirclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCircles-response>)))
  "Returns md5sum for a message object of type '<GetCircles-response>"
  "2b1b1441bc75b4f59372da8dedbed3bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCircles-response)))
  "Returns md5sum for a message object of type 'GetCircles-response"
  "2b1b1441bc75b4f59372da8dedbed3bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCircles-response>)))
  "Returns full string definition for message of type '<GetCircles-response>"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCircles-response)))
  "Returns full string definition for message of type 'GetCircles-response"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCircles-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCircles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCircles-response
    (cl:cons ':circles (circles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCircles)))
  'GetCircles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCircles)))
  'GetCircles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCircles)))
  "Returns string type for a service object of type '<GetCircles>"
  "turtlesim/GetCircles")