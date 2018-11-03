;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Integer, Integer -> Integer
; calculate the distance of a point from the origin
; d(0, P) = sqrt(x^2 + y^2)

;(check-expect (distance-from-origin 2 2) 2.82842712475) ; Works but looks like racket doesn't take inexact numbers when writing tests
(check-expect (distance-from-origin 2 0) 2)
(check-expect (distance-from-origin 0 2) 2)
(check-expect (distance-from-origin 0 0) 0)

;(define (distance-from-origin x y) 0) ;stub

(define (distance-from-origin x y)
  (sqrt (+
         (expt x 2)
         (expt y 2)
         )))