(global-set-key (kbd "M-s-<left>") 'winner-undo)
(global-set-key (kbd "M-s-<right>") 'winner-redo)
;;copy code
(global-set-key (kbd "s-C") 'my/copy-code-as-rtf)
;;copy file path
(global-set-key [f1] 'my/search_snippet)
(add-hook 'org-mode-hook
          (lambda()
            (define-key org-mode-map [f2] 'my/auto-sentence)
          (define-key org-mode-map [f1] 'youdao-dictionary-search-at-point+)))



(global-set-key [f2] 'prelude-copy-file-name-to-clipboard)

(global-set-key [f3] 'my/commit_question)
(global-set-key [f4] 'my/commit_answer)
(global-set-key [f5] 'dotspacemacs/sync-configuration-layers)

(global-set-key [f6] 'my/config)
(global-set-key [f7] 'my/funcs)
(global-set-key [f8] 'my/keybinding)
;; (global-set-key [f9] 'spacemacs/find-dotfile)
;; (add-hook 'ruby-mode-hook
;;           (lambda()
;;             (define-key ruby-mode-map [f9] 'my/search_rails)
;;             )
;;           )
(add-hook 'rspec-mode-hook
          (lambda()
            (define-key rspec-mode-map [f9] 'my/search_rspec)))

(global-set-key [f10] 'my/yas_reload)
(global-set-key [f11] 'yas-new-snippet-default)


(global-set-key [tab] 'tab-indent-or-complete)

(with-eval-after-load 'projectile-rails
  (evil-define-key 'normal ruby-mode-map (kbd "RET") #'projectile-rails-goto-file-at-point)
  (evil-define-key 'normal haml-mod-map (kbd "RET") #'projectile-rails-goto-file-at-point)
  (evil-define-key 'normal web-mod-map (kbd "RET") #'projectile-rails-goto-file-at-point)
  )

(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(spacemacs/set-leader-keys "me" 'quickrun)
(global-set-key (kbd "s-O") 'projectile-find-file)
(global-set-key (kbd "s-g") 'avy-goto-char)
(global-set-key (kbd "s-<left>") 'doc-view-last-page)
(global-set-key (kbd "s-<right>") 'doc-view-next-page)
(global-set-key (kbd "C-<SPC>") 'toggle-input-method) ;;chinese pyim


;; search global
(global-set-key (kbd "s-w") 'er/expand-region)
(spacemacs/set-leader-keys "odp" 'youdao-dictionary-search-at-point+)
(spacemacs/set-leader-keys "odf" 'find-by-pinyin-dired)
;; (global-set-key (kbd "s-f") 'helm-ag)
;; (global-set-key (kbd "C-k") 'delete-line-no-kill)
(global-set-key (kbd "s-/") 'spacemacs/comment-or-uncomment-lines)
(global-set-key (kbd "C-s-<up>") 'move-text-up)
(global-set-key (kbd "C-s-<down>") 'move-text-down)
(global-set-key (kbd "s-d") 'delete-line-no-kill)
(global-set-key (kbd "s-y") 'spacemacs/copy-and-comment-lines)
;; (bind-key* "s-r" 'browser-refresh--chrome-applescript)
(bind-key* "s-3" 'er/expand-region)
(spacemacs/set-leader-keys "oyv" 'yas-visit-snippet-file)
(spacemacs/set-leader-keys "oyc" 'yas-new-snippet)
(spacemacs/set-leader-keys "oyR" 'my/yas_reload)


(spacemacs/set-leader-keys "ogc" 'magit-commit)
(spacemacs/set-leader-keys "ogp" 'magit-push-current)
(spacemacs/set-leader-keys "ogr" 'vc-revert-buffer)
(spacemacs/set-leader-keys "oga" 'my/commit_answer)
(spacemacs/set-leader-keys "ogq" 'my/commit_question)
;; (global-set-key [f8] 'ranger)
;; (global-set-key [f9] 'neotree-project-dir)
(spacemacs/set-leader-keys "ot" 'neotree-project-dir)
(global-set-key (kbd "s-F") 'projectile-ag)
;; (global-set-key (kbd "C-s-u") 'mwim-beginning-of-code-or-line)
;; (global-set-key (kbd "C-s-o") 'mwim-end-of-code-or-line)
(define-key evil-normal-state-map (kbd "C-a") 'evil-beginning-of-line)
(define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line)
(define-key evil-visual-state-map (kbd "C-a") 'evil-beginning-of-line)
(define-key evil-motion-state-map (kbd "C-a") 'evil-beginning-of-line)
;;行尾
(define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
(define-key evil-insert-state-map (kbd "C-e") 'end-of-line)
(define-key evil-visual-state-map (kbd "C-e") 'evil-end-of-line)
(define-key evil-motion-state-map (kbd "C-e") 'evil-end-of-line)
(define-key evil-normal-state-map "\C-f" 'evil-forward-char)
(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
(define-key evil-normal-state-map "\C-b" 'evil-backward-char)
(define-key evil-motion-state-map "\C-b" 'evil-backward-char)
(define-key evil-insert-state-map "\C-b" 'evil-backward-char)
(define-key evil-visual-state-map "\C-b" 'evil-backward-char)
(define-key evil-normal-state-map "\C-d" 'evil-delete-char)
(define-key evil-insert-state-map "\C-d" 'evil-delete-char)
(define-key evil-visual-state-map "\C-d" 'evil-delete-char)
(define-key evil-normal-state-map "\C-n" 'evil-next-line)
(define-key evil-insert-state-map "\C-n" 'evil-next-line)
(define-key evil-visual-state-map "\C-n" 'evil-next-line)
(define-key evil-normal-state-map "\C-p" 'evil-previous-line)
(define-key evil-insert-state-map "\C-p" 'evil-previous-line)
(define-key evil-visual-state-map "\C-p" 'evil-previous-line)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-visual-state-map "\C-w" 'evil-delete)
(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-visual-state-map "\C-k" 'kill-line)

(define-key evil-normal-state-map "Q" 'call-last-kbd-macro)
(define-key evil-visual-state-map "Q" 'call-last-kbd-macro)
(define-key evil-normal-state-map (kbd "TAB") 'evil-undefine)

(define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)
(define-key evil-normal-state-map (kbd "C-o") 'evil-open-below)
(define-key evil-visual-state-map (kbd "C-o") 'evil-open-below)

(define-key evil-insert-state-map (kbd "C-S-o") 'evil-open-above)
(define-key evil-normal-state-map (kbd "C-S-o") 'evil-open-above)
(define-key evil-visual-state-map (kbd "C-S-o") 'evil-open-above)

(define-key evil-normal-state-map "\C-v" 'clipboard-yank)
(define-key evil-insert-state-map "\C-v" 'clipboard-yank)
(define-key evil-visual-state-map "\C-v" 'clipboard-yank)


(define-key evil-normal-state-map (kbd "DEL") 'backward-kill-word)
;;del往上移动10行
(define-key evil-normal-state-map (kbd "-") (lambda ()
                                                (interactive)
                                                (previous-line 10)
                                                (evil-scroll-line-up 10)
                                                ))
;;=往下移动十行
(define-key evil-normal-state-map (kbd "=") (lambda ()
                                              (interactive)
                                              (next-line 10)
                                              (evil-scroll-line-down 10)
                                              ))
