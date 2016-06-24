;;; Compiled snippets and support files for `images'
;;; Snippet definitions:
;;;
(yas-define-snippets 'images
                     '(("bs3thumbnail" "\n<div class=\"col-xs-${1:3} col-sm-${1:3} col-md-${1:3} col-lg-${1:3}\">\n	<a href=\"${2:#}\" class=\"thumbnail\">\n		<img data-src=\"${3:#}\" alt=\"$4\">\n	</a>\n</div>\n" "bs3thumbnail" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/images/bs3thumbnail.yasnippet" nil nil)
                       ("bs3thumbnail:content" "\n<div class=\"col-xs-${1:3} col-sm-${1:3} col-md-${1:3} col-lg-${1:3}\">\n	<div class=\"thumbnail\">\n		<img data-src=\"${2:#}\" alt=\"$3\">\n		<div class=\"caption\">\n			<h3>${4:Title}</h3>\n			<p>\n				${5:...}\n			</p>\n			<p>\n				<a href=\"${6:#}\" class=\"btn btn-primary\">${7:Action}</a>\n				<a href=\"${8:#}\" class=\"btn btn-default\">${9:Action}</a>\n			</p>\n		</div>\n	</div>\n</div>\n" "bs3thumbnail:content" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/images/bs3thumbnail-content.yasnippet" nil nil)
                       ("bs3image" "\n<img src=\"${1:#}\" ${2:class=\"img-responsive\"} alt=\"${3:Image}\">\n" "bs3image" nil nil nil "/Users/ok/.spacemacs.d/snippets/web-mode/images/bs3image.yasnippet" nil nil)))


;;; Do not edit! File generated at Thu Jun 23 21:49:31 2016
