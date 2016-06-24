;;; Compiled snippets and support files for `modal'
;;; Snippet definitions:
;;;
(yas-define-snippets 'modal
                     '(("bs3modal" "\n${1:<a class=\"btn btn-primary\" data-toggle=\"modal\" href='#${2:modal-id}'>Trigger modal</a>}\n<div class=\"modal fade\" id=\"${2:modal-id}\">\n	<div class=\"modal-dialog\">\n		<div class=\"modal-content\">\n			<div class=\"modal-header\">\n				<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n				<h4 class=\"modal-title\">${3:Modal title}</h4>\n			</div>\n			<div class=\"modal-body\">\n				$0\n			</div>\n			<div class=\"modal-footer\">\n				<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">${4:Close}</button>\n				<button type=\"button\" class=\"btn btn-primary\">${5:Save changes}</button>\n			</div>\n		</div>\n	</div>\n</div>\n" "bs3modal" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/modal/bs3modal.yasnippet" nil nil)))


;;; Do not edit! File generated at Thu Jun 23 21:49:31 2016
