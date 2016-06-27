(defconst *is-a-mac* (eq system-type 'darwin))

;;Suggested-by: first <k>

;; Ctrl-K with no kill
(defun delete-line-no-kill ()
  "Deletes a line, but does not put it in the kill-ring. (kinda)"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line 1)
  (setq kill-ring (cdr kill-ring)))


(defun my-startup-layout ()
  (interactive)
  (delete-other-windows)
  ;; (split-window-horizontally) ;; -> |
  ;; (next-multiframe-window)
  ;; (find-file "~/github/web/www/app/controllers/application_controller.rb")
  (split-window-vertically) ;;  -> --
  (next-multiframe-window)
  (find-file "~/.spacemacs.d/mycus.el")
  (next-multiframe-window)
  ;; (dired "~/github/web/www/.")
  (find-file "~/github/web/www/app/views/static_pages/home.html.erb")

  )
;; https://github.com/syohex/emacs-browser-refresh/blob/master/browser-refresh.el
(defun browser-refresh--chrome-applescript ()
  (interactive)
  (do-applescript
   (format
    "
    tell application \"Google Chrome\"
    set winref to a reference to (first window whose title does not start with \"Developer Tools - \")
    set winref's index to 1
    reload active tab of winref
    end tell
    " )))

;;set key for mac
;; (when *is-a-mac*
;;   (setq mac-option-modifier 'super)
;;   (setq mac-command-modifier 'meta)
;;   )
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

;; execute the layout
(my-startup-layout ) 

(defun save-refresh(arg)
  (interactive "p") 
  (progn
    (save-buffer)
    (indent-buffer)
    (browser-refresh--chrome-applescript)
    )
  )
;;web mode settings
(setq word-wrap t)
(web-mode-toggle-current-element-highlight)
(setq web-mode-enable-current-column-highlight t)
;;yank crazy
(defun crazy-yank(arg)
  (interactive "p")
  (progn
    ;; (delete-region)
    (spacemacs/paste-transient-state/evil-paste-before)
    )
  )

(global-set-key (kbd "s-v") 'crazy-yank)
;; search global
(spacemacs/set-leader-keys "od" 'youdao-dictionary-search-at-point+)
(global-set-key (kbd "s-f") 'helm-ag)
(global-set-key (kbd "s-1") 'indent-buffer)
(global-set-key (kbd "C-k") 'delete-line-no-kill)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)
(global-set-key (kbd "s-r") 'save-refresh)
;; (bind-key* "s-r" 'browser-refresh--chrome-applescript)
(bind-key* "s-3" 'er/expand-region)
(spacemacs/set-leader-keys "oyv" 'yas-visit-snippet-file)
(spacemacs/set-leader-keys "oyc" 'yas-new-snippet)
(spacemacs/set-leader-keys "ogc" 'magit-commit)
(spacemacs/set-leader-keys "ogp" 'magit-push-current)
(spacemacs/set-leader-keys "ogr" 'vc-revert-buffer)

;;
;; shift + click select region
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore) ; turn off font dialog
(define-key global-map (kbd "<S-mouse-1>") 'mouse-set-point)
(put 'mouse-set-point 'CUA 'move)
