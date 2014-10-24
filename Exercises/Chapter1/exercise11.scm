#|
  recursive process
|#
(define (fr n)
  (if (< n 3) 
      n
      (+ (fr (- n 1)) (* 2 (fr (- n 2))) (* 3 (fr (- n 3))))))

#|
  iterative process
|#
(define (fi n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count  0)
      c
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

#|
(fi 3)
(f-iter 2 1 0 3)
(f-iter (+ 2 (* 2 1) (* 3 0)) 2 1 (- 3 1))
(f-iter (4 2 1 2))
(f-iter (+ 4 (* 2 2) (* 3 1)) 4 2 (- 2 1))
(f-iter (11 4 2 1))
(f-iter (+ 11 (* 4 2) (* 3 2)) 11 4 (- 1 1))
(f-iter (+ 25 11 4 0))

4
|#
