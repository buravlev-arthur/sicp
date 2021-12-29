(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

"normal-order evaluation:"
(test 0 (p))
(if (= 0 0) 0 (p))
0

"applicative-order evaluation:"
(test 0 (p))
(if (= x 0) 0 y)
0
(p) "There is endless recursion of (p)"