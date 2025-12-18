(define (abs-diff x y)
   ((if (< x y) - +) (- x y)))

(define (good-enough? guess last-guess)
    (< (abs-diff guess last-guess) (/ guess 1000)))

(define (improve guess x)
    (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess last-guess x)
    (if (good-enough? guess last-guess)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
    (sqrt-iter 1.0 0 x))