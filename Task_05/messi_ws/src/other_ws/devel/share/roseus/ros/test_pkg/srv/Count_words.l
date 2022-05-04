;; Auto-generated. Do not edit!


(when (boundp 'test_pkg::Count_words)
  (if (not (find-package "TEST_PKG"))
    (make-package "TEST_PKG"))
  (shadow 'Count_words (find-package "TEST_PKG")))
(unless (find-package "TEST_PKG::COUNT_WORDS")
  (make-package "TEST_PKG::COUNT_WORDS"))
(unless (find-package "TEST_PKG::COUNT_WORDSREQUEST")
  (make-package "TEST_PKG::COUNT_WORDSREQUEST"))
(unless (find-package "TEST_PKG::COUNT_WORDSRESPONSE")
  (make-package "TEST_PKG::COUNT_WORDSRESPONSE"))

(in-package "ROS")





(defclass test_pkg::Count_wordsRequest
  :super ros::object
  :slots (_line ))

(defmethod test_pkg::Count_wordsRequest
  (:init
   (&key
    ((:line __line) "")
    )
   (send-super :init)
   (setq _line (string __line))
   self)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:serialization-length
   ()
   (+
    ;; string _line
    4 (length _line)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _line
       (write-long (length _line) s) (princ _line s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _line
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _line (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_pkg::Count_wordsResponse
  :super ros::object
  :slots (_count ))

(defmethod test_pkg::Count_wordsResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int64 _count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _count
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass test_pkg::Count_words
  :super ros::object
  :slots ())

(setf (get test_pkg::Count_words :md5sum-) "0631a1573c647362eba416a69e271fd9")
(setf (get test_pkg::Count_words :datatype-) "test_pkg/Count_words")
(setf (get test_pkg::Count_words :request) test_pkg::Count_wordsRequest)
(setf (get test_pkg::Count_words :response) test_pkg::Count_wordsResponse)

(defmethod test_pkg::Count_wordsRequest
  (:response () (instance test_pkg::Count_wordsResponse :init)))

(setf (get test_pkg::Count_wordsRequest :md5sum-) "0631a1573c647362eba416a69e271fd9")
(setf (get test_pkg::Count_wordsRequest :datatype-) "test_pkg/Count_wordsRequest")
(setf (get test_pkg::Count_wordsRequest :definition-)
      "string line

---

int64 count

")

(setf (get test_pkg::Count_wordsResponse :md5sum-) "0631a1573c647362eba416a69e271fd9")
(setf (get test_pkg::Count_wordsResponse :datatype-) "test_pkg/Count_wordsResponse")
(setf (get test_pkg::Count_wordsResponse :definition-)
      "string line

---

int64 count

")



(provide :test_pkg/Count_words "0631a1573c647362eba416a69e271fd9")


