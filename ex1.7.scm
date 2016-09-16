#lang sicp

;;; Example code from text

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

;;; Add version number for not covering stocking (sqrt)
(define (sqrt-v1 x)
  (sqrt-iter 1.0 x))

;;; Exercise 1.7
(define (good-enough?-v2 guess x)
  (< (abs (- guess (improve guess x))) 0.001))

(define (sqrt-iter-v2 guess x)
  (if (good-enough?-v2 guess x)
      guess
      (sqrt-iter-v2 (improve guess x) x)))

(define (sqrt-v2 x)
  (sqrt-iter-v2 1.0 x))

