; Auto-generated. Do not edit!


(cl:in-package turtlesim-msg)


;//! \htmlinclude Circle.msg.html

(cl:defclass <Circle> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (x
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

(cl:defclass Circle (<Circle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-msg:<Circle> is deprecated: use turtlesim-msg:Circle instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Circle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:id-val is deprecated.  Use turtlesim-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Circle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:x-val is deprecated.  Use turtlesim-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Circle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:y-val is deprecated.  Use turtlesim-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circle>) ostream)
  "Serializes a message object of type '<Circle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circle>) istream)
  "Deserializes a message object of type '<Circle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circle>)))
  "Returns string type for a message object of type '<Circle>"
  "turtlesim/Circle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle)))
  "Returns string type for a message object of type 'Circle"
  "turtlesim/Circle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circle>)))
  "Returns md5sum for a message object of type '<Circle>"
  "8d09c4d8c9a91946c3027d6fcacf7b61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circle)))
  "Returns md5sum for a message object of type 'Circle"
  "8d09c4d8c9a91946c3027d6fcacf7b61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circle>)))
  "Returns full string definition for message of type '<Circle>"
  (cl:format cl:nil "uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circle)))
  "Returns full string definition for message of type 'Circle"
  (cl:format cl:nil "uint8 id~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circle>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circle>))
  "Converts a ROS message object to a list"
  (cl:list 'Circle
    (cl:cons ':id (id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
