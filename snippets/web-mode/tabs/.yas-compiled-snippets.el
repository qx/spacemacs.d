;;; Compiled snippets and support files for `tabs'
;;; Snippet definitions:
;;;
(yas-define-snippets 'tabs
                     '(("bs3tabs" "\n<div role=\"tabpanel\">\n	<!-- Nav tabs -->\n	<ul class=\"nav nav-tabs\" role=\"tablist\">\n		<li role=\"presentation\" class=\"active\">\n			<a href=\"#${1:home}\" aria-controls=\"${1:home}\" role=\"tab\" data-toggle=\"tab\">${1:home}</a>\n		</li>\n		<li role=\"presentation\">\n			<a href=\"#${2:tab}\" aria-controls=\"${2:tab}\" role=\"tab\" data-toggle=\"tab\">${2:tab}</a>\n		</li>\n	</ul>\n\n	<!-- Tab panes -->\n	<div class=\"tab-content\">\n		<div role=\"tabpanel\" class=\"tab-pane active\" id=\"${1:home}\">...</div>\n		<div role=\"tabpanel\" class=\"tab-pane\" id=\"${2:tab}\">...</div>\n	</div>\n</div>\n" "bs3tabs" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/tabs/bs3tabs.yasnippet" nil nil)))


;;; Do not edit! File generated at Thu Jun 23 21:49:31 2016
