; EXERCISE 1.1

10 
;10

(+ 5 3 4)
;12

(- 9 1)
;8

(/ 6 2)
;3

(+ (* 2 4) (- 4 6))
;6

(define a 3)
;a

(define b (+ a 1))
;b

(+ a b (* a b))
;19

(= a b)
;#f

(if (and (> b a) (< b (* a b)))
    b
    a)
;4
   
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;16

(+ 2 (if (> b a) b a))
;6 

(* (cond ((> a b) a)
	 ((< a b) b)
         (else -1))
   (+ a 1))
;16
 

; EXERCISE 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 1 3))))) (* 3 (- 6 2) (- 2 7)))

; EXERCISE 1.3
(define (sq-2-largest a b c) 
  (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))))

; EXERCISE 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
 ; if b is positive add a to b, if b is negative subtract b from a

; EXERCISE 1.5
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
       0
       y))

;(test 0 (p))

; applicative-order evaluation: the interpreter will attempt to evaluate (p) which will result in an infinite loop
; normal-order evalution: the interpreter will execute the if statement first and return 0 before (p) is evaluated


; EXERCISE 1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; can't be used in recursive method because applicative-order evaluation mean else clause is always evaluated, so 
; the function will recurse infinitely


; EXERCISE 1.7

