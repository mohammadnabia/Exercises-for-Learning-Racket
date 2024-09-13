#lang Racket
(require 2htdp/image)
(circle 100 "solid" "red")
(circle 10 "solid" "yellow")

(overlay
         (circle 30 "solid" "black") 
         (circle 40 "solid" "green") 
         (circle 50 "solid" "yellow")
         (circle 60 "solid" "red")
         (circle 70 "solid" "blue"))
(beside
         (circle 30 "solid" "black") 
         (circle 40 "solid" "green") 
         (circle 50 "solid" "yellow")
         (circle 60 "solid" "red")
         (circle 70 "solid" "blue"))

((lambda (x) x) "it is Lambda" )
((lambda (x) x) '5+7  )
((lambda (x) x) (+ 5 7 ) )
((lambda (x) (beside x (beside x x x))) (ellipse  100 50 "solid" "pink") ) 

(let ([a 2]) (let ([a 3]) a)a)