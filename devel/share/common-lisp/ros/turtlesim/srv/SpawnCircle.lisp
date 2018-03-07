; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude SpawnCircle-request.msg.html

(cl:defclass <SpawnCircle-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpawnCircle-request (<SpawnCircle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnCircle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnCircle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<SpawnCircle-request> is deprecated: use turtlesim-srv:SpawnCircle-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SpawnCircle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:x-val is deprecated.  Use turtlesim-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SpawnCircle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:y-val is deprecated.  Use turtlesim-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnCircle-request>) ostream)
  "Serializes a message object of type '<SpawnCircle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnCircle-request>) istream)
  "Deserializes a message object of type '<SpawnCircle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnCircle-request>)))
  "Returns string type for a service object of type '<SpawnCircle-request>"
  "turtlesim/SpawnCircleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnCircle-request)))
  "Returns string type for a service object of type 'SpawnCircle-request"
  "turtlesim/SpawnCircleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnCircle-request>)))
  "Returns md5sum for a message object of type '<SpawnCircle-request>"
  "b1a607047a224654150e8bf2b094afd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnCircle-request)))
  "Returns md5sum for a message object of type 'SpawnCircle-request"
  "b1a607047a224654150e8bf2b094afd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnCircle-request>)))
  "Returns full string definition for message of type '<SpawnCircle-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnCircle-request)))
  "Returns full string definition for message of type 'SpawnCircle-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnCircle-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnCircle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnCircle-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude SpawnCircle-response.msg.html

(cl:defclass <SpawnCircle-response> (roslisp-msg-protocol:ros-message)
  ((circles
    :reader circles
    :initarg :circles
    :type (cl:vector turtlesim-msg:Circle)
   :initform (cl:make-array 0 :element-type 'turtlesim-msg:Circle :initial-element (cl:make-instance 'turtlesim-msg:Circle))))
)

(cl:defclass SpawnCircle-response (<SpawnCircle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnCircle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnCircle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<SpawnCircle-response> is deprecated: use turtlesim-srv:SpawnCircle-response instead.")))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <SpawnCircle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:circles-val is deprecated.  Use turtlesim-srv:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnCircle-response>) ostream)
  "Serializes a message object of type '<SpawnCircle-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnCircle-response>) istream)
  "Deserializes a message object of type '<SpawnCircle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnCircle-response>)))
  "Returns string type for a service object of type '<SpawnCircle-response>"
  "turtlesim/SpawnCircleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnCircle-response)))
  "Returns string type for a service object of type 'SpawnCircle-response"
  "turtlesim/SpawnCircleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnCircle-response>)))
  "Returns md5sum for a message object of type '<SpawnCircle-response>"
  "b1a607047a224654150e8bf2b094afd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnCircle-response)))
  "Returns md5sum for a message object of type 'SpawnCircle-response"
  "b1a607047a224654150e8bf2b094afd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnCircle-response>)))
  "Returns full string definition for message of type '<SpawnCircle-response>"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnCircle-response)))
  "Returns full string definition for message of type 'SpawnCircle-response"
  (cl:format cl:nil "Circle[] circles~%~%~%================================================================================~%MSG: turtlesim/Circle~%uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnCircle-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnCircle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnCircle-response
    (cl:cons ':circles (circles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnCircle)))
  'SpawnCircle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnCircle)))
  'SpawnCircle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnCircle)))
  "Returns string type for a service object of type '<SpawnCircle>"
  "turtlesim/SpawnCircle")