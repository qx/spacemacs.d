;;; Compiled snippets and support files for `makefile-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-mode
                     '(("cl" "clean:\n	${1:rm -r ${2:\\$(${3:OUTDIR})}}\n$0\n" "clean" nil nil
                        ((yas-indent-line 'fixed))
                        "/Users/ok/.spacemacs.d/snippets/makefile-mode/clean" nil nil)
                       ("all" "all:\n        $0" "all" nil nil nil "/Users/ok/.spacemacs.d/snippets/makefile-mode/all" nil nil)))


;;; Do not edit! File generated at Thu Sep  8 11:02:54 2016
