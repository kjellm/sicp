(display "Ex 1.8:")
(newline)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) tolerance))


(define (improve guess x)
  (/ (+ (square (/ x guess)) (* 2 guess)) 3))

(display (sqrt 4))
(newline)
