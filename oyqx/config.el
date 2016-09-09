(spacemacs//set-monospaced-font   "Source Code Pro" "方正硬笔楷书简体" 14 18) ;设置等宽字体
(setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
(setq yas-snippet-dirs "~/.spacemacs.d/snippets")
(setq  company-idle-delay 0.01)
(setq  companSEEDDsz-minimum-prefix-length 1)
;; (spacemacs//set-monospaced-font   "Source Code Pro" "Hiragino Sans GB" 14 16) ;设置等宽字体
;;设置文学编程支持
(org-babel-do-load-languages
 'org-babel-load-languages
 '((perl . t)
   (ruby . t)
   (sh . t)
   (js . t)
   (latex .t)
   (python . t)
   (emacs-lisp . t)
   (plantuml . t)
   (ditaa . t)))
(setq neo-smart-open t)
(run-at-time 1 10 'indent-org-block-automatically)
(delete-selection-mode t)             ;;设置黏贴为替换,而不是append
;; (global-set-key [f8] 'neotree-project-dir)
(setq ranger-dont-show-binary t)
(setq ranger-excluded-extensions '("DS_Store" "mkv" "iso" "mp4"))

; (setenv "PATH" path)
; (setq exec-path
;       (append
;        (split-string-and-unquote path ":"
;                                  exec-path)))
; (let ((path (shell-command-to-string "~/Projects/config/env.sh; echo -n $PATH")))
  ;;auto save while lost focus
  (add-hook 'focus-out-hook (lambda () (save-some-buffers t)))
  (global-set-key (kbd "s-r") 'replace-stringn)
  ;;shell exec alias
(setq shell-file-name "zsh")
(setq shell-command-switch "-ic")