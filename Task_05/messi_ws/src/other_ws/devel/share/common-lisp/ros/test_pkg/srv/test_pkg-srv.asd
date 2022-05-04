
(cl:in-package :asdf)

(defsystem "test_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Adding_numbers" :depends-on ("_package_Adding_numbers"))
    (:file "_package_Adding_numbers" :depends-on ("_package"))
    (:file "Count_words" :depends-on ("_package_Count_words"))
    (:file "_package_Count_words" :depends-on ("_package"))
  ))