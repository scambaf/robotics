
(cl:in-package :asdf)

(defsystem "pkg_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DoCarWashAction" :depends-on ("_package_DoCarWashAction"))
    (:file "_package_DoCarWashAction" :depends-on ("_package"))
    (:file "DoCarWashActionFeedback" :depends-on ("_package_DoCarWashActionFeedback"))
    (:file "_package_DoCarWashActionFeedback" :depends-on ("_package"))
    (:file "DoCarWashActionGoal" :depends-on ("_package_DoCarWashActionGoal"))
    (:file "_package_DoCarWashActionGoal" :depends-on ("_package"))
    (:file "DoCarWashActionResult" :depends-on ("_package_DoCarWashActionResult"))
    (:file "_package_DoCarWashActionResult" :depends-on ("_package"))
    (:file "DoCarWashFeedback" :depends-on ("_package_DoCarWashFeedback"))
    (:file "_package_DoCarWashFeedback" :depends-on ("_package"))
    (:file "DoCarWashGoal" :depends-on ("_package_DoCarWashGoal"))
    (:file "_package_DoCarWashGoal" :depends-on ("_package"))
    (:file "DoCarWashResult" :depends-on ("_package_DoCarWashResult"))
    (:file "_package_DoCarWashResult" :depends-on ("_package"))
  ))