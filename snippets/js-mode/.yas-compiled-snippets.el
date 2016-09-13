;;; Compiled snippets and support files for `js-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js-mode
                     '(("*ty" "* @type {${type}}" "type-inline-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/type-multiline-comment" nil nil)
                       ("@ty" "/** @type {${type}} */" "type-inline-comment"
                        (not
                         (=
                          (js2-node-type
                           (js2-node-at-point))
                          js2-COMMENT))
                        nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/type-inline-comment" nil nil)
                       ("*@r" "* @return {${type}}" "return-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/return-comment" nil nil)
                       ("req.json" "new Request.JSON({\n  onSuccess: function(responseJSON, responseText) {\n    $0\n  }\n}).${1:send}(${2:url});" "json" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/req.json" nil nil)
                       ("req.html" "new Request.HTML({\n  onSuccess: function(responseTree, responseElements, responseHTML, responseJavaScript) {\n    $0\n  }\n}).${1:get}(${2:url});" "html" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/req.html" nil nil)
                       ("*@p" "* @param {${type}} ${comment}." "param-comment"
                        (=
                         (js2-node-type
                          (js2-node-at-point))
                         js2-COMMENT)
                        nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/param-comment" nil nil)
                       ("/**" "/**\n * $0\n */" "multiline-comment" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/multiline-comment" nil nil)
                       ("log" "console.log($0);" "console.log" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/log" nil nil)
                       ("init" "initialize: function($1) {\n  $0\n}" "Constructor" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/init" nil nil)
                       ("if" "if (${1:condition}) {\n  $0\n}" "if" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/if" nil nil)
                       ("f" "function${1: ${2:name}}(${3:arg}) {\n         $0\n}" "function" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/function" nil nil)
                       ("for" "for(var ${1:i} = ${2:0}; $1 < ${3:collection}.length; $1++) {\n  $0\n}" "for" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/for" nil nil)
                       ("ev.fire" "fireEvent('$0')" "fireEvent" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/ev.fire" nil nil)
                       ("ev.add" "addEvent('${1:event}', function($2) {\n  $0\n});" "addEvent" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/ev.add" nil nil)
                       ("el" "else {\n  $0\n}" "else" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/el" nil nil)
                       ("each" "${1:collection}.each(function($2) {\n  $0\n});" "each" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/each" nil nil)
                       ("dbg" "debugger;" "debugger" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/debugger" nil nil)
                       ("com" "/*\n * $0\n */" "comment (/* ... */)" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/com" nil nil)
                       ("class" "var ${1:name} = new Class({\n  initialize: function($2) {\n    $0\n  }\n});" "Class" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/class" nil nil)
                       ("al" "alert($0);" "alert" nil nil nil "/Users/ok/.spacemacs.d/snippets/js-mode/al" nil nil)))


;;; Do not edit! File generated at Sat Sep 10 19:45:40 2016
