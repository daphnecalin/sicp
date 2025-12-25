(define (double n)
    (* n 2))

(define (halve n)
    (/ n 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (mult-iter a b n)
    (if (= b 0)
        n
        (if (even? b)
            (mult-iter (double a) (halve b) n)
            (mult-iter a (- b 1) (+ a n)))))