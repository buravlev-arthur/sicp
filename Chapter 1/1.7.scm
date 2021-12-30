(define (abs x) 
  (if (< x 0) 
       (- x)
       x))

(define (good-enaugh? guess new-guess) 
  (< (abs (- guess new-guess)) 0.001))

(define (improve guess x) 
  (/ (+ (/ x guess) guess) 2))

(define (sqrt-iter guess x) 
  (if (good-enaugh? guess (improve guess x))
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt x) 
  (sqrt-iter 1.0 x))

(println (sqrt 185440))
(println (sqrt 0.005))