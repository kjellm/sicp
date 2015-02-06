(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x)
                                (square y)))

(define (sum-of-two-biggest a b c)
  (cond ((> a b) (sum-of-squares a (max b c)))
        (else (sum-of-squares b (max a c))))))

(display (sum-of-two-biggest 1 2 3))
(newline)
(display (sum-of-two-biggest 1 3 2))
(newline)
(display (sum-of-two-biggest 3 2 1))
(newline)
