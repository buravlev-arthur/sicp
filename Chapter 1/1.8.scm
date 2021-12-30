(define (square x)
  (* x x))

(define (abs x) 
  (if (< x 0) 
       (- x)
       x))

(define (good-enaugh? guess new-guess) 
  (< (abs (- guess new-guess)) 0.001))

(define (improve guess x) 
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess x) 
  (if (good-enaugh? guess (improve guess x))
          guess
          (cbrt-iter (improve guess x) x)))


(define (cbrt x) 
  (cbrt-iter 1.0 x))

(println (cbrt 64))