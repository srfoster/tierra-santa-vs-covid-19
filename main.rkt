#lang at-exp racket

(require website/bootstrap)

(define (join-group-button)
  (a href: "https://www.facebook.com/groups/565093364203382/"
     (button-dark
       (img 
	 width: 20
	 src: "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512")
       " Click me!"
       )))

(define (short-version)
  (card
    (card-header (h4 "Short version"))
    (card-body
      (p "Click below to join the " (b "\"Tierrasanta vs COVID-19\"") " group")
      (hr)
      (join-group-button))))


(define (long-version)
  (card
    (card-header (h4 "Long Version"))
    (card-body
      @paras{
      Dear Friends,

      I'm a coder, IT professional, and small business owner living in the Tierrasanta area.  I want to help my community draw closer digitally, even as we are forced to distance ourselves socially.

      Yes, I know that some of you have apps like Nextdoor for that, and some of you may already have started similar Facebook groups.

      @b{Great!  In these unprecidented times, the more connectivity the better.}

      If you live or work in Tierrasanta and you care about this community, please join below.

      Sincerely, 
      Stephen R. Foster, Ph.D.
      }

      (hr)

      (join-group-button))))


(define (index-page)
  (page index.html
	(content
	  (container 
	    class: "p-5"
	    (h1 "Tierrasanta vs COVID-19")

	    (hr)

	    (short-version)
	    (hr)
	    (long-version)
	    ))))


(with-prefix "tierra-santa-vs-covid-19"

	     (define index.html
	       (index-page))

	     (render #:to "out"
		     (list
		       (bootstrap-files)
		       index.html)))
