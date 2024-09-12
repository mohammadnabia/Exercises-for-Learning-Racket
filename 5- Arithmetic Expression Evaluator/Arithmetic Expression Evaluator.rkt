#lang racket
(define (meval xx)
(cond
  ((number? xx) xx)
   ((equal? (first xx) '+)
    (+ (meval (list-ref xx 1)) (meval (list-ref xx 2))))
   ((equal? (first xx) '*)
    (* (meval (list-ref xx 1)) (meval (list-ref xx 2))))  
   ((equal? (first xx) 'expt)
    (expt (meval (list-ref xx 1)) (meval (list-ref xx 2))))
   (else (error "faild"))))


(meval (*(+ 3 2)5))
(meval (+(* 3 2)5))
(meval (+(expt 3 2)5))