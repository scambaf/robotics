
(cl:in-package :asdf)

(defsystem "pkg_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sum_two_int" :depends-on ("_package_sum_two_int"))
    (:file "_package_sum_two_int" :depends-on ("_package"))
  ))