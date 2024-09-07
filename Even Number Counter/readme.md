# Explanation and Tutorial for Even Number Counter Code in Racket

## Overview:

This piece of code defines two functions:

1- A helper function that checks whether a number is even.

2- A main function that counts the number of even numbers in a list.

## Code Breakdown:
```Racket
#lang Racket
```
`This line indicates that the code is written in the Racket programming language. It should be placed at the top of every Racket file to specify the language being used.`


```Racket
(define (even i)
 (if (zero? (remainder i 2)) 1 0))
```

`Here, the function even is defined. It takes one parameter i, which represents a number. The function checks if the remainder of dividing i by 2 is zero (i.e., it checks if i is even):
If i is even, it returns 1.`

`If i is odd, it returns 0.`

`remainder i 2: Calculates the remainder when i is divided by 2.`

`zero?: Checks whether the result of remainder is zero.`



```Racket
(define (evenCounter C)
  (if (empty? C) 0
    (+ (even (first C)) (evenCounter (rest C)))))
```
`This is the main function called evenCounter. It takes a list C as input and recursively counts how many numbers in the list are even:`

`(empty? C): Checks if the list is empty.`

`(first C): Retrieves the first element of the list.`

`(rest C): Retrieves the remaining elements of the list (everything except the first).`

The function works recursively:

* If the list C is empty, it returns 0.
* If the list is not empty, it checks whether the first element of the list is even using the even function, adds the result (1 or 0) to the result of recursively calling evenCounter on the rest of the list.



```Racket
(define (evenCounter C)
  (if (empty? C) 0
    (+ (even (first C)) (evenCounter (rest C)))))
```

`Finally, the evenCounter function is called with a list of numbers as input:`

`The list is: (12 4 1 213212 5 34 6 23 9 78). you can use your numbers.`

`The function will count how many even numbers are in this list.`

## How to Run the Code:

To run this code, use a Racket environment (such as DrRacket). You can simply copy the code into the environment and run it to see the output.

