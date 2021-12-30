(define (square x) 
  (* x x))

(define (abs x) 
  (if (< x 0) 
       (- x)
       x))

(define (good-enaugh? guess x) 
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x) 
  (/ (+ (/ x guess) guess) 2))

(define (new-if predicate then-clause else-clause) 
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x) 
  (new-if (good-enaugh? guess x)
          guess
          (sqrt-iter (improve guess x) x))) "There is endless recursion of requiring (sqrt-iter 2.0 4)"


(define (sqrt x) 
  (sqrt-iter 1.0 x))

(println (sqrt 4))