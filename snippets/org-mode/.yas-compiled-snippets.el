;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("verse_" "#+begin_verse\n        $0\n#+end_verse" "verse" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/verse" nil nil)
                       ("uml" "#+BEGIN_UML\n$1\n#+END_UML\n" "uml" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/uml" nil nil)
                       ("srcr" "#+BEGIN_SRC ruby :results output :session :exports both \nclass ${1:MyClass}\n     def ${2:MyMethod}\n         ${3}\n     end\nend\n#+END_SRC\n" "srcr" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/src.yas" nil nil)
                       ("src" "#+BEGIN_SRC ${1:sourcefile} :results output :session :exports both \n            ${2:yourcode}\n#+END_SRC" "src" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/src" nil nil)
                       ("org-style" "\n#+TITLE:     ${1:title}\n#+AUTHOR:    ${2:name}\n#+EMAIL:     (concat \"${2:name}\" at-sign \"${3:email}\")\n#+DESCRIPTION: Org-HTML export made simple.\n#+KEYWORDS:  org-mode, export, html, theme, style, css, js, bigblow\n#+LANGUAGE:  en\n#+OPTIONS:   H:4 toc:t num:2 ^:nil\n\n#+PROPERTY:  header-args :padline no\n#+SETUPFILE: setup/theme-readtheorg-local.setup\n\n " "org-style" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/org-style" nil nil)
                       ("matrix_" "\\left \\(\n\\begin{array}{${1:ccc}}\n${2:v1 & v2} \\\\\n$0\n\\end{array}\n\\right \\)" "matrix" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/matrix" nil nil)
                       ("latex_" "#+BEGIN_LaTeX\n$0\n#+END_LaTeX" "latex" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/latex" nil nil)
                       ("img_" "<img src=\"$1\"\n alt=\"$2\" align=\"${3:left}\"\n title=\"${4:image title}\"\n class=\"img\"\n</img>\n$0" "img" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/img" nil nil)
                       ("fig_" "#+CAPTION: ${1:caption}\n#+ATTR_LaTeX: ${2:scale=0.75}\n#+LABEL: fig:${3:label}\n" "figure" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/figure" nil nil)
                       ("entry_" "#+begin_html\n---\nlayout: ${1:default}\ntitle: ${2:title}\n---\n#+end_html\n$0" "entry" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/entry" nil nil)
                       ("emb_" "src_${1:lang}${2:[${3:where}]}{${4:code}}" "embedded" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/embedded" nil nil)
                       ("elisp_" "#+begin_src emacs-lisp :tangle yes\n$0\n#+end_src" "elisp" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/elisp" nil nil)
                       ("dot_" "#+begin_src dot :file ${1:file} :cmdline -T${2:pdf} :exports none :results silent\n            $0\n#+end_src\n\n[[file:$1]]" "dot" nil nil nil "/Users/ok/.spacemacs.d/snippets/org-mode/dot" nil nil)))


;;; Do not edit! File generated at Sun Sep 18 06:46:17 2016
