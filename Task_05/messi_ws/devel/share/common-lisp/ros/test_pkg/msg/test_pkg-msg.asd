
(cl:in-package :asdf)

(defsystem "test_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mymessage" :depends-on ("_package_mymessage"))
    (:file "_package_mymessage" :depends-on ("_package"))
  ))