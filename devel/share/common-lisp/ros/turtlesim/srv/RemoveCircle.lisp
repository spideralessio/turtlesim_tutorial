; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude RemoveCircle-request.msg.html

(cl:defclass <RemoveCircle-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RemoveCircle-request (<RemoveCircle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveCircle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveCircle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<RemoveCircle-request> is deprecated: use turtlesim-srv:RemoveCircle-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RemoveCircle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:id-val is deprecated.  Use turtlesim-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveCircle-request>) ostream)
  "Serializes a message object of type '<RemoveCircle-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveCircle-request>) istream)
  "Deserializes a message object of type '<RemoveCircle-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveCircle-request>)))
  "Returns string type for a service object of type '<RemoveCircle-request>"
  "turtlesim/RemoveCircleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCircle-request)))
  "Returns string type for a service object of type 'RemoveCircle-request"
  "turtlesim/RemoveCircleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveCircle-request>)))
  "Returns md5sum for a message object of type '<RemoveCircle-request>"
  "33e097ebc19ab7d381da8cb765933cf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveCircle-request)))
  "Returns md5sum for a message object of type 'RemoveCircle-request"
  "33e097ebc19ab7d381da8cb765933cf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveCircle-request>)))
  "Returns full string definition for message of type '<RemoveCircle-request>"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveCircle-request)))
  "Returns full string definition for message of type 'RemoveCircle-request"
  (cl:format cl:nil "uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveCircle-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveCircle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveCircle-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude RemoveCircle-response.msg.html

(cl:defclass <RemoveCircle-response> (roslisp-msg-protocol:ros-message)
  ((circles
    :reader circles
    :initarg :circles
    :type (cl:vector turtlesim-msg:Circle)
   :initform (cl:make-array 0 :element-type 'turtlesim-msg:Circle :initial-element (cl:make-instance 'turtlesim-msg:Circle))))
)

(cl:defclass RemoveCircle-response (<RemoveCircle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveCircle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveCircle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<RemoveCircle-response> is deprecated: use turtlesim-srv:RemoveCircle-response instead.")))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <RemoveCircle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:circles-val is deprecated.  Use turtlesim-srv:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveCircle-response>) ostream)
  "Serializes a message object of type '<RemoveCircle-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveCircle-response>) istream)
  "Deserializes a message object of type '<RemoveCircle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveCircle-response>)))
  "Returns string type for a service object of type '<RemoveCircle-response>"
  "turtlesim/RemoveCircleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCircle-response)))
  "Returns string type for a service object of type 'RemoveCircle-response"
  "turtlesim/RemoveCircleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveCircle-response>)))
  "Returns md5sum for a message object of type '<RemoveCircle-response>"
  "33e097ebc19ab7d381da8cb765933cf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveCircle-response)))
  "Returns md5sum for a message object of type 'RemoveCircle-response"
  "33e097ebc19ab7d381da8cb765933cf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveCircle-response>)))
  "Returns full string definition for message of type '<RemoveCircle-response>"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveCircle-response)))
  "Returns full string definition for message of type 'RemoveCircle-response"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveCircle-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveCircle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveCircle-response
    (cl:cons ':circles (circles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveCircle)))
  'RemoveCircle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveCircle)))
  'RemoveCircle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCircle)))
  "Returns string type for a service object of type '<RemoveCircle>"
  "turtlesim/RemoveCircle")