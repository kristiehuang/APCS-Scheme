;SS Chpt 17 & SICP 1.3


;list. nested list is "structured list"
;sentence - type of list that contains WORDS
  ; first, empty?, bf, bl, last,
  ; also takes all the car/cdr stuff

;selectors/constructors for lists

;car returns first element in list
;cdr - everything but first
;null? - empty list?

;list constructors

;list - creates list
;cons - constructors, adds to list
;append - combines two LISTS into 1 larger list
;map = every
;filter = keep
;reduce = accumulate
;length
;assoc - searches elements based on FIRST element only
;list-ref - returns index value

(list '(i am) '(the walrus))
;((I AM) (THE WALRUS))

(cons '(i am) '(the walrus))
;((I AM) THE WALRUS)

(append '(i am) '(the walrus))
;(I AM THE WALRUS)

(map square '(9 3 2)) ;(81 9 4)

(filter even? '(2 3 4 5)) ;(2 4)

(filter (lambda (flavor) (member? 'swirl flavor))
          '((rum raisin) (root beer swirl) (rocky road) (fudge swirl)))
;if each one contains "swirl", keep & return it
;((ROOT BEER SWIRL) (FUDGE SWIRL))

(assoc 'george
         '((john lennon) (paul mccartney)
	   (george harrison) (ringo starr)))
;searches for "george", returns that element
;(GEORGE HARRISON)

(list-ref '(happiness is a warm gun) 3)
;WARM - 3rd index


;(cdr (cdr (car (cdr xxxx))))  IS EQUAL TO   (cddadr xxx)