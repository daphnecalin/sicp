(define (even? n)
    (= (remainder n 2) 0))

(define (fast-expt-iter n b a)
    (if (= n 0)
        a
        (if (even? n)
            (fast-expt-iter (/ n 2) (* b b) a)
            (fast-expt-iter (- n 1) b (* a b)))))