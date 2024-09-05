#lang Racket
(define (even i)
 (if (zero? (remainder i 2)) 1 0))


(define (evenCounter C)(if (empty? C)0
  (+ (even (first C))(evenCounter (rest C)))))

(evenCounter (list 12 4 1 213212 5 34 6 23 9 78))