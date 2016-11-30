#lang sicp

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f-iter n)
  (define (iter a b c n)
    (if (< n 3)
        a
        (iter (+ a (* 2 b) (* 3 c))
              a
              b
              (- n 1))))
  (if (< n 3)
      n
      (iter 2 1 0 n)))

