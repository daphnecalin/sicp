(define (pascal count row)
    (if (or (= row 1) (= row 2) (= count 1) (= count row))
        1
        (+ (pascal (- count 1) (- row 1)) (pascal count (- row 1)))))

(define (print-pascal-row count row)
    (display (pascal count row)) (display " ")
    (if (> count 1)
        (print-pascal-row (- count 1) row)
        1))

(define (print-pascal-in count size)
    (print-pascal-row count count) (newline)
    (if (> count size)
        1
        (print-pascal-in (+ count 1) size)))

(define (print-pascal size)
    (print-pascal-in 1 size))