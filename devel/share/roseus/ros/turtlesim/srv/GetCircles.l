;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetCircles)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetCircles (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETCIRCLES")
  (make-package "TURTLESIM::GETCIRCLES"))
(unless (find-package "TURTLESIM::GETCIRCLESREQUEST")
  (make-package "TURTLESIM::GETCIRCLESREQUEST"))
(unless (find-package "TURTLESIM::GETCIRCLESRESPONSE")
  (make-package "TURTLESIM::GETCIRCLESRESPONSE"))

(in-package "ROS")





(defclass turtlesim::GetCirclesRequest
  :super ros::object
  :slots ())

(defmethod turtlesim::GetCirclesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass turtlesim::GetCirclesResponse
  :super ros::object
  :slots (_circles ))

(defmethod turtlesim::GetCirclesResponse
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

(defclass turtlesim::GetCircles
  :super ros::object
  :slots ())

(setf (get turtlesim::GetCircles :md5sum-) "2b1b1441bc75b4f59372da8dedbed3bb")
(setf (get turtlesim::GetCircles :datatype-) "turtlesim/GetCircles")
(setf (get turtlesim::GetCircles :request) turtlesim::GetCirclesRequest)
(setf (get turtlesim::GetCircles :response) turtlesim::GetCirclesResponse)

(defmethod turtlesim::GetCirclesRequest
  (:response () (instance turtlesim::GetCirclesResponse :init)))

(setf (get turtlesim::GetCirclesRequest :md5sum-) "2b1b1441bc75b4f59372da8dedbed3bb")
(setf (get turtlesim::GetCirclesRequest :datatype-) "turtlesim/GetCirclesRequest")
(setf (get turtlesim::GetCirclesRequest :definition-)
      "---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")

(setf (get turtlesim::GetCirclesResponse :md5sum-) "2b1b1441bc75b4f59372da8dedbed3bb")
(setf (get turtlesim::GetCirclesResponse :datatype-) "turtlesim/GetCirclesResponse")
(setf (get turtlesim::GetCirclesResponse :definition-)
      "---
Circle[] circles


================================================================================
MSG: turtlesim/Circle
uint8 id
float32 x
")



(provide :turtlesim/GetCircles "2b1b1441bc75b4f59372da8dedbed3bb")


