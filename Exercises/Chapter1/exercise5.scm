(define (>= x y)
  (or (> x y) (= x y)))

(define (square_two_of_three x y z)
  (cond ((and (>= x y) (>= z y)) (+ (square x) (square z)))
        ((and (>= z x) (>= y x)) (+ (square z) (square y)))
        ((and (>= x z) (>= y z)) (+ (square x) (square y)))))
