#lang sicp

(define (cubrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x) (* x x))

(define (cubrt x)
  (cubrt-iter 1.0 x))
