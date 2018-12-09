(in-package :snark-user)

(defun read-assertions-from-file (f)
  (let ((stream (open f)))
    (loop for next-expr = (read stream nil 'EOF)
        until (eq next-expr 'EOF)
        do (progn
             (format nil "asserting: ~A " next-expr)
             (assert next-expr)))))

(defun obolog-prove (proof)
  (initialize)
  ;;(use-temporal-reasoning t)
  (use-resolution t)
  (declare-time-relations)
  ;; read
  (read-assertions-from-file "test.kif")
  ;(read-assertions-from-file "obolog.lisp")
  ;(read-assertions-from-file "ro.obolog")
  (read-assertions-from-file "obolog-test-data.lisp")
  
  ;; prove it
  ;; these proofs only make sense with the test database above
  (print (prove
          (cdr (assoc proof '((part_of1 . (instance_of ?x cell ?t))   ;; all nuclei are part of some cell
                              (sym1 . (holds symmetric sr))
                              (sym2 . (holds adj nuclear_membrane  nucleus))
                              (part_of_tr . (=>
                                             (and (OBO_REL__part_of n1 c1 t1)
                                                  (OBO_REL__part_of c1 s1 t2))
                                             (part_of n1 s1 t1)))
                              (transitive . (link OBO_REL__part_of spliceosome cell)))))))) ;; N po C po S
                     
(defun test ()
  (obolog-prove 'part_of1))



