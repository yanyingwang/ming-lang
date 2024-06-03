#lang at-exp s-exp "../../../private/mapping-lang.rkt"



>>> equal? 同? ;;; 同 同齐 同等 俤
>>> equal-always? 􏷇? ; 􏾗? ;; 􏾱? 􏾬
>>> eqv? 􏷅? ;􏾃? ;; 􏾕 􏾖 粡 􏾰? ;; ???? ;; #f <= (eqv? (make-string 3 #\z) (make-string 3 #\z))
>>> eq? 冃? ;侗? ;; 􏾯? ;; 􏾯 #f <= (eq? (make-string 3 #\z) (make-string 3 #\z)) (eq? (expt 2 100) (expt 2 100))
;; equal?/  recur
;; equal-always?/  recur
;; 4.1.1 Object Identity and Comparisons
;; 4.1.2 Equality and Hashing
;; equal-hash-code
;; equal-hash-code/  recur
;; equal-secondary-hash-code
;; equal-always-hash-code
;; equal-always-hash-code/  recur
;; equal-always-secondary-hash-code
;; eq-hash-code
;; eqv-hash-code
;; 4.1.3 Implementing Equality for Custom Types
;; gen:  equal+  hash
;; gen:  equal-mode+  hash
;; prop:  equal+  hash
;; 4.1.4 Honest Custom Equality
;; 4.1.5 Combining Hash Codes
;; hash-code-combine
;; hash-code-combine-unordered
;; hash-code-combine*
;; hash-code-combine-unordered*
