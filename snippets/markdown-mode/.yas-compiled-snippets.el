;;; Compiled snippets and support files for `markdown-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'markdown-mode
                     '(("utf8" "# -*- mode: snippet -*-\n# name: utf-8 encoding\n# key: utf8\n<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />\n$0\n" "utf8" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/utf8" nil nil)
                       ("rlink" "# -*- mode: snippet -*-\n# name: Reference Link\n# key:rlink\n[${1:Link Text}][$2] $0\n" "rlink" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/rlink" nil nil)
                       ("rlb" "# -*- mode: snippet -*-\n# name: Reference Label\n# key:R-label\n[${1:Reference}]: ${2:URL} $3\n$0\n" "rlb" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/rlb" nil nil)
                       ("rimg" "# -*- mode: snippet -*-\n# name: Referenced Image\n# key:rimg\n![${1:Alt Text}][$2] $0\n" "rimg" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/rimg" nil nil)
                       ("ol" "# -*- mode: snippet -*-\n# name: Ordered List\n# key:Ordered\n${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number yas-text)))}. $0\n" "ol" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/ol" nil nil)
                       ("link" "# -*- mode: snippet -*-\n# name: Link\n# key:Link\n[${1:Link Text}](${2:URL} $3) $0\n" "link" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/link" nil nil)
                       ("img" "# -*- mode: snippet -*-\n# name: Image\n# key:Image\n![${1:Alt Text}](${2:URL} $3) $0\n" "img" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/img" nil nil)
                       ("hr.2" "# -*- mode: snippet -*-\n# name: Horizontal Rule (*)\n# key:Horizontal*\n\n*******\n\n$0\n" "hr.2" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/hr.2" nil nil)
                       ("hr.1" "# -*- mode: snippet -*-\n# name: Horizontal Rule (-)\n# key:Horizontal-\n\n----------\n\n$0\n" "hr.1" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/hr.1" nil nil)
                       ("highlight" "# -*- mode: snippet -*-\n# name: Highlight\n# key:Highlight\n{% highlight ${1:language} %}\n${0:content}\n{% endhighlight %}" "highlight" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/highlight" nil nil)
                       ("h6" "# -*- mode: snippet -*-\n# name: Header 6\n# key:Header6\n###### ${1:Header 6} ######\n\n$0\n" "h6" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h6" nil nil)
                       ("h5" "# -*- mode: snippet -*-\n# name: Header 5\n# key:Header5\n##### ${1:Header 5} #####\n\n$0\n" "h5" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h5" nil nil)
                       ("h4" "# -*- mode: snippet -*-\n# name: Header 4\n# key:Header4\n#### ${1:Header 4} ####\n\n$0\n" "h4" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h4" nil nil)
                       ("h3" "# -*- mode: snippet -*-\n# name: Header 3\n# key:Header3\n### ${1:Header 3} ###\n\n$0\n" "h3" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h3" nil nil)
                       ("h2.2" "# -*- mode: snippet -*-\n# name: Header 2 (-)\n# key:Header2-2\n${1:Header 2}\n${1:$(make-string (string-width yas-text) ?\\-)}\n\n$0\n" "h2.2" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h2.2" nil nil)
                       ("h2.1" "# -*- mode: snippet -*-\n# name: Header 2 (##)\n# key:Header2\n## ${1:Header 1} ##\n\n$0\n" "h2.1" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h2.1" nil nil)
                       ("h1.2" "# -*- mode: snippet -*-\n# name: Header 1 (=)\n# key:Header1-2\n${1:Header 1}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0\n" "h1.2" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h1.2" nil nil)
                       ("h1.1" "# -*- mode: snippet -*-\n# name: Header 1 (#)\n# key:Header1\n# ${1:Header 1} #\n\n$0\n" "h1.1" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/h1.1" nil nil)
                       ("__" "# -*- mode: snippet -*-\n# name: Strong\n# key:Strong\n**${1:Text}** $0\n" "__" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/__" nil nil)
                       ("_" "# -*- mode: snippet -*-\n\n# name: Emphasis\n# key:Emphasis\n_${1:Text}_ $0\n" "_" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/_" nil nil)
                       ("-" "\n# -*- mode: snippet -*-\n# name: Unordered List\n# key: Unordered List\n- ${1:Text}\n-$0\n" "-" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/-" nil nil)
                       ("+" "# -*- mode: snippet -*-\n\n# name: Unordered List\n# key: unordered\n+ ${1:Text}\n+$0\n" "+" nil nil nil "/Users/ok/.spacemacs.d/snippets/markdown-mode/+" nil nil)))


;;; Do not edit! File generated at Sun Sep 18 06:46:17 2016
