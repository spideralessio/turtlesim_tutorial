
(cl:in-package :asdf)

(defsystem "turtlesim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Circle" :depends-on ("_package_Circle"))
    (:file "_package_Circle" :depends-on ("_package"))
    (:file "CircleArray" :depends-on ("_package_CircleArray"))
    (:file "_package_CircleArray" :depends-on ("_package"))
    (:file "Color" :depends-on ("_package_Color"))
    (:file "_package_Color" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
  ))