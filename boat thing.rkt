;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |boat thing|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define CANVAS_HEIGHT 100)
(define CANVAS_WIDTH 400)
(define SCENE (empty-scene CANVAS_WIDTH CANVAS_HEIGHT "lightyellow"))
(define WATER_LEVEL (* (/ 30 100) CANVAS_HEIGHT))
(define WATER_WIDTH CANVAS_WIDTH)
(define WATER_X (/ CANVAS_WIDTH 2))
(define WATER_Y (- CANVAS_HEIGHT (/ WATER_LEVEL 2)))
(define BOAT_COLOR "brown")
(define BOAT_HULL_WIDTH
  (* (/ 40 100) CANVAS_WIDTH))
(define BOAT_HEIGHT (* (/ 40 100) CANVAS_HEIGHT))
(define BOAT_X (/ CANVAS_WIDTH 2))
(define BOAT_Y (- WATER_Y (/ WATER_LEVEL 2) 10))
(define BOAT_BOW BOAT_HEIGHT)

(define WATER
  (rectangle
    CANVAS_WIDTH WATER_LEVEL "solid" "lightblue"))
(define BOAT
  (beside
   (rotate 180 (right-triangle BOAT_BOW BOAT_BOW "solid" BOAT_COLOR))
   (rectangle BOAT_HULL_WIDTH BOAT_HEIGHT "solid" BOAT_COLOR)
   (flip-horizontal
    (rotate 180 (right-triangle BOAT_BOW BOAT_BOW "solid" BOAT_COLOR)))
   ))

(define BOAT_SAILING
  (overlay BOAT WATER))

(place-image BOAT BOAT_X BOAT_Y (place-image WATER WATER_X WATER_Y SCENE))
