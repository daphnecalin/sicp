(define (rf n)
    (if (< n 3)
        n
        (+  (rf (- n 1)) 
            (* 2 (rf (- n 2))) 
            (* 3 (rf (- n 3))))))

(define (f n-1 n-2 n-3)
    (+ n-1 (* 2 n-2) (* 3 n-3)))

(define (iter-f-in n-1 n-2 n-3 count)
    (if (< count 4)
        (f n-1 n-2 n-3)
        (iter-f-in (f n-1 n-2 n-3) n-1 n-2 (- count 1))))

(define (iter-f n)
    (if (< n 3) 
        n
        (iter-f-in 2 1 0 n)))