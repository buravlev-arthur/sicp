(define (inc n)
  (+ n 1))

(define (dec n)
  (- n 1))

"First procedure:"
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

"Steps:"
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9
"It's recursive process"

"Second procedure:"
(define (+ a b)
  (if (= a 0)
  b
  (+ (dec a) (inc b))))

"Steps:"
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
"It's iterative process"
