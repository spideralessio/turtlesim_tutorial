;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::RemoveCircle)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'RemoveCircle (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::REMOVECIRCLE")
  (make-package "TURTLESIM::REMOVECIRCLE"))
(unless (find-package "TURTLESIM::REMOVECIRCLEREQUEST")
  (make-package "TURTLESIM::REMOVECIRCLEREQUEST"))
(unless (find-package "TURTLESIM::REMOVECIRCLERESPONSE")
  (make-package "TURTLESIM::REMOVECIRCLERESPONSE"))

(in-package "ROS")





(defclass turtlesim::RemoveCircleRequest
  :super ros::object
  :slots (_id ))

(defmethod turtlesim::RemoveCircleRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlesim::RemoveCircleResponse
  :super ros::object
  :slots (_circles ))

(defmethod turtlesim::RemoveCircleResponse
  (:init
   (&key
    ((:circles __circles) (let (r) (dotimes (i 0) (push (instance turtlesim::Circle :init) r)) r))
    )
   (send-super :init)
   (setq _circles __circles)
   self)
  (:circles
   (&rest __circles)
   (if (keywordp (car __circles))
       (send* _circles __circles)
     (progn
       (if __circles (setq _circles (car __circles)))
       _circles)))
  (:serialization-length
   ()
   (+
    ;; turtlesim/Circle[] _circles
    (apply #'+ (send-all _circles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Circle[] _circles
     (write-long (length _circles) s)
     (dolist (elem _circles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Circle[] _circles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _circles (let (r) (dotimes (i n) (push (instance turtlesim::Circle :init) r)) r))
     (dolist (elem- _circles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass turtlesim::RemoveCircle
  :super ros::object
  :slots ())

(setf (get turtlesim::RemoveCircle :md5sum-) "33e097ebc19ab7d381da8cb765933cf3")
(setf (get turtlesim::RemoveCircle :datatype-) "turtlesim/RemoveCircle")
(setf (get turtlesim::RemoveCircle :request) turtlesim::RemoveCircleRequest)
(setf (get turtlesim::RemoveCircle :response) turtlesim::RemoveCircleResponse)

(defmethod turtlesim::RemoveCircleRequest
  (:response () (instance turtlesim::RemoveCircleResponse :init)))

(setf (get turtlesim::RemoveCircleRequest :md5sum-) "33e097ebc19ab7d381da8cb765933cf3")
(setf (get turtlesim::RemoveCircleRequest :datatype-) "turtlesim/RemoveCircleRequest")
(setf (get turtlesim::RemoveCircleRequest :definition-)
      "uint8 id
---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")

(setf (get turtlesim::RemoveCircleResponse :md5sum-) "33e097ebc19ab7d381da8cb765933cf3")
(setf (get turtlesim::RemoveCircleResponse :datatype-) "turtlesim/RemoveCircleResponse")
(setf (get turtlesim::RemoveCircleResponse :definition-)
      "uint8 id
---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")



(provide :turtlesim/RemoveCircle "33e097ebc19ab7d381da8cb765933cf3")


