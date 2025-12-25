(define (f x y z)
    (cond 
        ((and (not (< x y)) (not (< x z)))  (+(* y y)(* z z)))
        ((and (not (< y x)) (not (< y z)))  (+(* x x)(* z z)))
        (else (+(* x x)(* y y)))))