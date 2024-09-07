#lang racket

(define (sum list)
  (if (null? list) 0
      (+ (first list)(sum (rest list)))))
(sum '(50 40 20 90))
