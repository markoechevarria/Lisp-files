;;; LISP Tutorial 1: Basic LISP Programming

;; C-x C-f -> open a new file
;; Alt-x make-directory <path> -> create a new directory
;; C-c C-c -> compile the file
;; C-x C-s -> save the file
;; C-x b -> navigate buffers


(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2))
         )
      ))

(defun many (n)
  (values n (* n 2) (* n 3) ))

(defun triple (x)
  (* 3 x))

(defun negate (x)
  "Negate the value of X"
  (- x))

(defun factorial (n)
  "Compute the factorial of n."
  (if (= n 1)
      1
      (* n (factorial ( - n 1)))))
(defun triangular (n)
  "Compute the nth triangular number"
  (if (= n 1)
      1
      (+ n (triangular ( - n 1)))))


;; Write down a recursive definition of B^E (assuming that both B and E are non-negative integers).
;; Then implement a linearly recursive function (power B E) that computes B^E.
;; Enter your function definition into a text file. Then load it into LISP. Trace the execution of (power 2 6).

(defun tothepowerof (a b)
  "Calculate a to the power of b"
  (if ( = b 0)
      1
      ( * a (tothepowerof a (- b 1)) )))

(defun fibonacci (n)
  (if (or (= n 1) (= n 0))
      1
      ( + (fibonacci (- n 1)) (fibonacci (- n 2)))))

;; (1+ x) -> (+ x 1)
;; (1- x) -> (- x 1)
;; (zerop x) -> (= x 0)
;; (plusp x) -> (> x 0)
;; (minusp x) -> (< x 0)
;; (evenp x) -> (= (rem x 2) 0)
;; (oddp x) -> (/= (rem x 2) 0)

;; (or x y)
;; (and x y)
;; (not x)

