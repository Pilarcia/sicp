;; Define a procedure that takes 3 arguments and return the sum of the square of the two large numbers
(defun sum-values (list)
  (if (null list) 0
    (+ (first list) (sum-values (rest list)))))

(defun square-from-list (list)
  (mapcar (lambda (x)
	    (* x x))
	  list))

(defun get-two-large (one two three )
  (cond ( (and (< one two) (< one three)) (list two three))
	((and (< two one) (< two three)) (list one three))
	((and (< three one) (< three two)) (list one two))))

(defun sum-square-of-two-large (one two three)
  (sum-values (square-from-list (get-two-large one two three))))

(sum-square-of-two-large 1 2 3)

;; Fibonacci
;; 0 1 1 2 3 5 8 13 21
;; (n 0 == 0)
;; (n 1 == 1)
;; (n n == (n - 2) + (n -1)
(defun fibonacci (n)
  (cond ((equalp n 0) 0)
	((equalp n 1) 1)
	((+ (fibonacci (- n 2)) (fibonacci (- n 1))))))

(fibonacci 7)

(defun fibonacci-2 (n))
	


