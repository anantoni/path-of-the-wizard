(define (pascal row column)
  (cond ((= row  column) 1)
        ((= column 0) 1)
        (else (+ (pascal (- row 1) (- column 1)) (pascal (- row 1) column)))))
         
