; Start the LFE REPL
; ./bin/lfe

;Compile the file:
;> (c "sample-module.lfe")

;use the module name a colon before the function name
;> (sample-module:my-sum 1 6)
;42
;> (sample-module:my-sum 1 60)
;3660
;> (sample-module:my-sum 1 600)
;360600
;> (sample-module:my-sum 1 6000)
;36006000

(defmodule sample-module
  (export all))

(defun my-sum (start stop)
    (let ((my-list (lists:seq start stop)))
      (* 2 (lists:foldl
             (lambda (n acc)
               (+ n acc))
             0 my-list))))
           