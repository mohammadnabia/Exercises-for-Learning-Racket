#lang racket

(define (deleteLast list)
(if (empty? (cdr list))'()
(cons (car list) (deleteLast (cdr list)))))

(deleteLast '(10 9 8 7  6 5 4 3 2 1)) 