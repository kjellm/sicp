;; Ackerman's function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(display (A 1 10)) (newline)
(display (A 2 4)) (newline)
(display (A 3 3)) (newline)

;; ----------------------

(define (f n) (A 0 n))

;; Computes 2n

(define (g n) (A 1 n))

;; (A 0 (A 1 (- n 1)))
;; (A 0 (A 0 (A 1 (- (- n 1) 1))))

;; Computes 2^n

(define (h n) (A 2 n))

;; (A 1 (A 2 (- n 1)))
;; (A 1 ((A 1 (A 2 (- (- n 1) - 1))))))
;; (A 1 (A 1 (A 1 ... (A 2 1))))
;; (A 1 (A 1 (A 1 ... (A 1 2))))

;; Computes 2^2^2^2 ...
