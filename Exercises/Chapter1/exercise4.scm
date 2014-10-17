#|
If b > 0 
    return a + b;
else
    return a - b;
|#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) 

