(define (a-plus-abs-b a b)
        ((if (> b a) + -) a b))

(a-plus-abs-b 3 2)
((if (> b a) + -) a b)
((if (> 2 3) + -) 3 2)
(- 3 2)
1