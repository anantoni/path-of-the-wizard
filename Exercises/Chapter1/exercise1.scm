(define a 3)                     ;;; a = 3
(define b (+ a 1))               ;;; b = 4

(+ a b (* a b))                  ;;; returns 19

(= a b)                          ;;; returns false

(if (and (> b a) (< b (* a b)))  ;;; returns 4
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))        ;;; returns 16
      (else 25))

(+ 2 (if (> b a) b a))           ;;; returns 6

(* (cond ((> a b) a)             ;;; returns 16
         ((< a b) b)
         (else -1))
   (+ a 1))
