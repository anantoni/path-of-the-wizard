(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess previous-guess) 
  (< (/ (abs (- guess previous-guess)) previous-guess) 0.0000000000000000001))

(define (sqrt x)
  (sqrt-iter 1.0 0.5 x))
