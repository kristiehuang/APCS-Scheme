(make-bintree datum left right)  ; creates a binary tree node
(datum bintree)                  ; returns the datum of a node in a binary tree
(left bintree)                   ; returns the left subtree of a binary tree
(right bintree)                  ; returns the right subtree of a binary tree
the-empty-tree                   ; a tree with no content
(empty-tree? bintree)            ; #t if the-empty-tree, #f otherwise
(leaf? bintree)                  ; #t if a non-empty tree with no children, #f otherwise


(define bst
  (make-bintree 15
                (make-bintree 6
                              (make-bintree 2 the-empty-tree the-empty-tree)
                              the-empty-tree)
                (make-bintree 22
                              (make-bintree 17
                                            (make-bintree 16 the-empty-tree the-empty-tree)
                                            (make-bintree 19 the-empty-tree the-empty-tree))
                              (make-bintree 24 the-empty-tree the-empty-tree))))


;maxpath empty tree?
;tree can take neg numbers?

(define (maxpath bst)
  (cond
    ((leaf? bst) (datum bst))
    ((empty-tree? bst) 0)
    (else (+ (datum bts) (max (maxpath (left tree)) (maxpath (right tree)) )))
    )
  )

(define (pathway num bst)
  (cond
    ((empty-tree? bst) (list #f))
    ((< num (datum bst)) (cons 'left (pathway num (left bst))))
    ((> num (datum bst)) (cons 'right (pathway num (right bst))))
    ((= num (datum bst)) (list 'done))

    )
  )


(define (square x) (* x x))

(define (deepmap func list)
  (define (deepmapiter func list final-list)
   
    (cond
      ((empty? list) final-list)
      ((list? (car list)) (deepmapiter func (cdr list) (cons final-list (deepmap func (car list))) ))
      (else (deepmapiter func (cdr list) (cons final-list (func (car list)))))
    
      )
    )

  (deepmapiter func list '())
  )




(define (deepmap2 func list)
  (cond 
    ((empty? list) '())
    ((list? (car list)) (cons (deepmap2 func (car list)) (deepmap2 func (cdr list))))
    (else (cons (func (car list)) (deepmap2 func (cdr list))))

    )
  )