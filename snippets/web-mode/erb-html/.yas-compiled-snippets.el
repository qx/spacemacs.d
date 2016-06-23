;;; Compiled snippets and support files for `erb-html'
;;; Snippet definitions:
;;;
(yas-define-snippets 'erb-html
                     '(("unless" "\n<% unless $1 %>\n	$0\n<% end %>\n" "unless" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/unless_erb.yasnippet" nil nil)
                       ("tft" "<%= text_field_tag \"${1:name}\", \"${2:value}\", placeholder: \"${3:placeholder}\", class: \"${4:class}\" %>" "tft" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/text_field_tag.yasnippet" nil nil)
                       ("st" "<%= submit_tag \"${1:My Button Text}\", class: \"${2:class}\" %>" "st" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/submit_tag.yasnippet" nil nil)
                       ("pe" "<%= $0 %>" "pe" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/print_erb.yasnippet" nil nil)
                       ("pft" "<%= password_field_tag(:${1:thing} %>" "pft" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/password_tag.yasnippet" nil nil)
                       ("lt" "<%= link_to $1, $2 %>" "lt" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/link_to.yasnippet" nil nil)
                       ("lblt" "<%= label_tag (:${1:thing}, \"${2:Your label text}\" %>" "lblt" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/label_tag.yasnippet" nil nil)
                       ("if" "\n<% if $1 %>\n	$0\n<% end %>\n" "if" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/if_erb.yasnippet" nil nil)
                       ("ife" "\n<% if $1 %>\n	$2\n<% else %>\n	$0\n<% end %>\n" "ife" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/if_else_erb.yasnippet" nil nil)
                       ("ff" "<%= form_for(${1:@things}) do |${2:f}| %>\n		$3\n<% end %>\n  " "ff" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/form_for_erb.yasnippet" nil nil)
                       ("t" "<%= t('$0') %>" "t" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/erb_translation.yasnippet" nil nil)
                       ("er" "<% $0 %>" "er" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/erb.yasnippet" nil nil)
                       ("end" "\n<% end %>\n" "end" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/end_erb.yasnippet" nil nil)
                       ("elsif" "<% elsif ${1:true} %>" "elsif" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/elsif_erb.yasnippet" nil nil)
                       ("else" "<% else %>" "else" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/else_erb.yasnippet" nil nil)
                       ("each" "\n<% ${1:@things}.each do |${2:thing}| %>\n	$0\n<% end %>\n" "each" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/each_erb.yasnippet" nil nil)
                       ("pc" "<%# $0 %>" "pc" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/erb-html/comment_erb.yasnippet" nil nil)))


;;; Do not edit! File generated at Thu Jun 23 21:49:31 2016
