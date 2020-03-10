
(cl:in-package :asdf)

(defsystem "shimmer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Heading" :depends-on ("_package_Heading"))
    (:file "_package_Heading" :depends-on ("_package"))
    (:file "ImuData" :depends-on ("_package_ImuData"))
    (:file "_package_ImuData" :depends-on ("_package"))
  ))