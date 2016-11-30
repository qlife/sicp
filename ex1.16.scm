#lang sicp

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt a b n)
  (define (iter product b count)
    (cond ((= count 0) product)
          ((even? count) (iter product (* b b) (/ count 2))) ;;; b^count == (b^2)^(count/2), thus we appoint b'<- (* b b)
          (else (iter (* b product) b (- count 1)))))
  (cond ((or (= a 0) (= b 0)) 0)
        ((= b 1) a)
        ((= n 0) a)
        (else (* a (iter 1 b n)))))

