#lang racket

(require 2htdp/image)

(define (qr)
  (bitmap/file "../qr/qrcode.png"))

(define (link)
  (text/font 
    "https://bit.ly/39GMSaY"
    50 "blue"
    #f 'roman 'normal 'normal #t))

(define (bg)
  (rectangle 1500 1500 'solid 'white))

(define (full)
  (overlay
    
    (above
      (text "Tierrasanta vs COVID-19" 100 'black)
      (text "Please join us!" 75 'black)
      (qr)	
      (empty-scene 0 20)
      (link))

    (bg)
    ))

(save-image 
  (full)
  "flier.png")
