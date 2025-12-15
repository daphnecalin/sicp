(define (abs-diff x y)
   (if (< x y) (- (- x y)) (- x y)))

(define (good-enough? guess last-guess)
    (< (abs-diff guess last-guess) (/ guess 1000)))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cbrt-iter guess last-guess x)
    (if (good-enough? guess last-guess)
        guess
        (cbrt-iter (improve guess x) guess x)))

(define (cube-root x)
    (cbrt-iter 1 0 x))