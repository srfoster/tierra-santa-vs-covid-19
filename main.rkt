#lang at-exp racket

(require website)

(define index.html
  (page index.html
	(content
          (h1 "Hello world!"))))


(render #:to "out"
	index.html)
