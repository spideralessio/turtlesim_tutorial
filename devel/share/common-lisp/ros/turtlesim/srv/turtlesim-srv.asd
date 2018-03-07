
(cl:in-package :asdf)

(defsystem "turtlesim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :turtlesim-msg
)
  :components ((:file "_package")
    (:file "GetCircles" :depends-on ("_package_GetCircles"))
    (:file "_package_GetCircles" :depends-on ("_package"))
    (:file "Kill" :depends-on ("_package_Kill"))
    (:file "_package_Kill" :depends-on ("_package"))
    (:file "RemoveCircle" :depends-on ("_package_RemoveCircle"))
    (:file "_package_RemoveCircle" :depends-on ("_package"))
    (:file "SetPen" :depends-on ("_package_SetPen"))
    (:file "_package_SetPen" :depends-on ("_package"))
    (:file "Spawn" :depends-on ("_package_Spawn"))
    (:file "_package_Spawn" :depends-on ("_package"))
    (:file "SpawnCircle" :depends-on ("_package_SpawnCircle"))
    (:file "_package_SpawnCircle" :depends-on ("_package"))
    (:file "TeleportAbsolute" :depends-on ("_package_TeleportAbsolute"))
    (:file "_package_TeleportAbsolute" :depends-on ("_package"))
    (:file "TeleportRelative" :depends-on ("_package_TeleportRelative"))
    (:file "_package_TeleportRelative" :depends-on ("_package"))
  ))