;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::SpawnCircle)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'SpawnCircle (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::SPAWNCIRCLE")
  (make-package "TURTLESIM::SPAWNCIRCLE"))
(unless (find-package "TURTLESIM::SPAWNCIRCLEREQUEST")
  (make-package "TURTLESIM::SPAWNCIRCLEREQUEST"))
(unless (find-package "TURTLESIM::SPAWNCIRCLERESPONSE")
  (make-package "TURTLESIM::SPAWNCIRCLERESPONSE"))

(in-package "ROS")





(defclass turtlesim::SpawnCircleRequest
  :super ros::object
  :slots (_x _y ))

(defmethod turtlesim::SpawnCircleRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim::SpawnCircleResponse
  :super ros::object
  :slots (_circles ))

(defmethod turtlesim::SpawnCircleResponse
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

(defclass turtlesim::SpawnCircle
  :super ros::object
  :slots ())

(setf (get turtlesim::SpawnCircle :md5sum-) "b1a607047a224654150e8bf2b094afd3")
(setf (get turtlesim::SpawnCircle :datatype-) "turtlesim/SpawnCircle")
(setf (get turtlesim::SpawnCircle :request) turtlesim::SpawnCircleRequest)
(setf (get turtlesim::SpawnCircle :response) turtlesim::SpawnCircleResponse)

(defmethod turtlesim::SpawnCircleRequest
  (:response () (instance turtlesim::SpawnCircleResponse :init)))

(setf (get turtlesim::SpawnCircleRequest :md5sum-) "b1a607047a224654150e8bf2b094afd3")
(setf (get turtlesim::SpawnCircleRequest :datatype-) "turtlesim/SpawnCircleRequest")
(setf (get turtlesim::SpawnCircleRequest :definition-)
      "float32 x
float32 y
---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")

(setf (get turtlesim::SpawnCircleResponse :md5sum-) "b1a607047a224654150e8bf2b094afd3")
(setf (get turtlesim::SpawnCircleResponse :datatype-) "turtlesim/SpawnCircleResponse")
(setf (get turtlesim::SpawnCircleResponse :definition-)
      "float32 x
float32 y
---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")



(provide :turtlesim/SpawnCircle "b1a607047a224654150e8bf2b094afd3")


