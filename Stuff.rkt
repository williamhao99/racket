;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Stuff) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct node (val l r))

(define a1 (make-node 100 false false))
(define a2 (make-node 200 false false))
(define b1 (make-node 100 false false))
(define b2 (make-node 200 false false))
(define c1 (make-node 300 a1 a2))
(define c2 (make-node 300 b1 b2))

(define A (make-node 500 c1 c2))

(define (sum root)
  (if (false? root) 0 (+ (+ (sum (node-l root)) (node-val root)) (sum (node-r root)))))
  
(check-expect (sum A) 1700)

