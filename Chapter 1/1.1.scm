(println 
  (if (= 10 10) 
      true 
      false))

(println 
  (if (= (+ 5 3 4) 12) 
      true 
      false))

(println 
  (if (= (- 9 1) 8) 
      true 
      false))

(println 
  (if (= (/ 6 2) 3) 
      true
      false))

(println 
  (if (= (+ (* 2 4) (- 4 6)) 6) 
      true
      false))

(define a 3)
(println 
  (if (= a 3) 
      true 
      false))

(define b (+ a 1))
(println 
  (if (= b 4) 
      true 
      false))

(println 
  (if (= (+ a b (* a b)) 19)
      true
      false))

(println
  (if (not (= a b))
      true
      false))

(println
  (if (= (if (and (> b a) (< b (* a b)))
              b
              a) 
          4)
      true
      false))

(println
  (if (= (cond ((= a 4) 6)
               ((= b 4) (+ 6 7 a))
               (else 25)) 
          16)
      true
      false))

(println
  (if (= (+ 2 
            (if (> b a) 
                b 
                a)) 
          6)
      true
      false))

(println
  (if (= (* (cond ((> a b) a) 
                  ((< a b) b) 
                  (else (- 1))) 
            (+ a 1)) 
          16)
      true
      false))