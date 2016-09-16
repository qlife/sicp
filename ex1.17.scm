#lang sicp
;;; TODO

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? n)
  (= 0 (remainder n 2)))

(define (mul a b)
  (define (iter a b)
    (cond ((= b 0) a)
          ((even? b) (mul (double a) (halve b)))
          (else (mul (+ b a) (- b 1)))))
  (cond ((or (= a 0) (= b 0)) 0)
        (else (iter a b))))
          

                   
     
      
      