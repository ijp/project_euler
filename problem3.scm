(import (rnrs))

(define (divisible-by? x y)
  (zero? (modulo x y)))

(define (loop x i)
  (cond ((> x i) '())
        ((divisible-by? i x)
         (cons x (loop x (div i x))))
        (else
         (loop (+ x 1) i))))

(define (factor i)
  ;; won't give the right answer if i <= 1, but who cares
  (loop 2 i))

(display (apply max (factor 600851475143)))
(newline)
