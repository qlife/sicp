#lang sicp

;;; (p) stands for (pascal-triangle-num)
(define (p r c)
  (cond ((= c 1) 1)
        ((= c r) 1)
        ((> c r) 0)
        (else (+ (p (- r 1) (- c 1))
                 (p (- r 1) c)))))
         
   
