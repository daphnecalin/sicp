(define (double n)
    (* n 2))

(define (halve n)
    (/ n 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (mult a b)
    (if (= b 0)
        0
        (if (even? b)
            (double (mult a (halve b)))
            (+ a (mult a (- b 1))))))