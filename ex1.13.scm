#lang sicp

;;; See secion 1.2.2
;;; \phi^2 = 1 + \phi
;;; Assume Fib(k-1) = (\phi^{k-1} - \psi^{k-1}) / \sqrt(5)
;;; Fib(k) = Fib(k-1) + Fib(k-2)
;;;        = { \phi^{k-1} - \psi^{k-1} + \phi^{k-2} - \psi^{k-1} } / \sqrt(5)
;;;        = { \phi^{k-2}(\phi+1) - \psi^{k-2}(\psi+1) } / \sqrt(5)
;;;        = ( \phi^k - \psi^k ) / \sqrt(5)
;;;
;;; Then check abs( ( \phi^n / \sqrt(5) ) - Fib(n) )
;;;
;;; This term is abs( \psi^n / \sqrt(5) ),
;;; however abs(\psi^n / \sqrt(5)) <= 1, thus its nth term is also smaller than ONE.
;;;
;;; Therefore, we claim no other integer in between (\phi^n / \sqrt(5)) and Fib(n).
;;;
