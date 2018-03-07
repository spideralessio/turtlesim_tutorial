;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::Circle)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'Circle (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::CIRCLE")
  (make-package "TURTLESIM::CIRCLE"))

(in-package "ROS")
;;//! \htmlinclude Circle.msg.html


(defclass turtlesim::Circle
  :super ros::object
  :slots (_id _x _y ))

(defmethod turtlesim::Circle
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlesim::Circle :md5sum-) "8d09c4d8c9a91946c3027d6fcacf7b61")
(setf (get turtlesim::Circle :datatype-) "turtlesim/Circle")
(setf (get turtlesim::Circle :definition-)
      "uint8 id
float32 x
float32 y
")



(provide :turtlesim/Circle "8d09c4d8c9a91946c3027d6fcacf7b61")


