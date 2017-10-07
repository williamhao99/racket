;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname SumOf2Lists) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; define a function sum-lists which takes two list and return the sum of all in the two lists

(define (sum-list l)
  (if (empty? l) 0 (+ (first l) (sum-list (cdr l)))))

(define (sum-lists la lb)
  (+ (sum-list la) (sum-list lb)))

(define lista (list 2 3 4 5))
(define listb (list 2 9))

(sum-list lista)

(check-expect (sum-lists lista listb) 25)
