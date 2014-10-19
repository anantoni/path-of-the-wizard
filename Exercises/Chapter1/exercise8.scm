(define (cbrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (cbrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous-guess) 
  (< (/ (abs (- guess previous-guess)) previous-guess) 0.0000000000000000001))

(define (cbrt x)
  (cbrt-iter 1.0 0.5 x))
