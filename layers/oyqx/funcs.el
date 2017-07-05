(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))
(defun my/copy-code-as-rtf (&optional font-size)
  (interactive "P")
  (let* ((real-font-size
          (if (and font-size
                   (/= (prefix-numeric-value font-size) 4))
              (abs font-size)
            22))
         (common-options
          ;; (format "--font Monaco --font-size %d %s -O rtf --style Breeze"
                  (format "--font Monaco --font-size %d %s -O rtf --style Moria"
                  real-font-size
                  (if (and font-size
                           (or (= (prefix-numeric-value font-size) 4)
                               (< (prefix-numeric-value font-size) 0)))
                      "--linenumbers" "")))
         (temp-buffer (get-buffer-create " *code*")))
    (shell-command-on-region
     (if (region-active-p) (region-beginning) (point-min))
     (if (region-active-p) (region-end) (point-max))
     (format "highlight --syntax %s %s"
             (file-name-extension (buffer-file-name)) common-options)
     temp-buffer)
    (with-current-buffer temp-buffer
      (goto-char (point-max))
      (search-backward "\\par\\pard")
      (delete-region (match-beginning 0) (match-end 0))
      (shell-command-on-region (point-min) (point-max) "pbcopy")
      (kill-buffer (current-buffer)))
    (message "Copied %s to pasteboard as RTF with font-size of %d"
             (if (region-active-p) "region" "file")
             real-font-size)))
(defun my/auto-sentence ()
  (interactive)
  (org-forward-sentence)
  (insert "\n\n"))


(defun my/translate()
  (interactive)
  (find-file "/Users/ok/Dropbox/org/translate.org")
  )
(defun my/env()
  (interactive)
  (find-file "/Users/ok/Projects/config/env.sh")
  )

(defun my/config()
  (interactive)
  (find-file "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/oyqx/config.el")
  )
(defun my/keybinding()
  (interactive)
  (find-file "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/oyqx/keybindings.el")
  )
(defun my/funcs()
  (interactive)
  (find-file "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/oyqx/funcs.el")
  )
(defun my/packages()
  (interactive)
  (find-file "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/oyqx/packages.el")
  )
;;replace-string with cmd+ r
;;替换evil-delete的yank行为
;; (defun bb/evil-delete (orig-fn beg end &optional type _ &rest args)
;;   (apply orig-fn beg end type ?_ args))
;; (advice-add 'evil-delete :around 'bb/evil-delete)
;;================end

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))
(defun evil-undefine ()
  (interactive)
  (let (evil-mode-map-alist)
    (call-interactively (key-binding (this-command-keys)))))
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (if project-dir
        (if (neotree-toggle)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))



;; ;; 退出编辑模式自动切换输入法
;; (defun exit-pyim()
;;  message "yesk"
;;   )

;; ;;fasjdifouasdfiousdf
;; (add-hook 'evil-insert-state-exit-hook 'exit-pyim)

                                        ; reload yas
(defun my/yas_reload()
  (interactive)
  (progn
    (yas-recompile-all)
    (yas-reload-all)
    )
  )
(defun prelude-copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))
;;snippet
(defun delete-line-no-kill ()
  "Deletes a line, but does not put it in the kill-ring. (kinda)"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line 1)
  (setq kill-ring (cdr kill-ring)))
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

(defun my/manager()
  ;; /Users/ok/github/app_all/appServerManage
  (interactive)

  (dired-other-frame "/Users/ok/github/app_all/appServerManage/.")
  )
(defun my/class_config()
  (interactive)
  (find-file "/Users/ok/github/myfun/samples/config.yml")
  )
(defun my/class_ruby()
  (interactive)
  (find-file "/Users/ok/github/myfun/samples/create_course_folder_class.rb")
  )
(defun my/exec-class-config()
  (interactive)
  (shell-command "ruby /Users/ok/github/myfun/samples/create_course_folder_class.rb")
  )
;;查找快捷键
(defun my/search_snippet(x)
  (interactive "MEnter the string to be search:")
  ;; (message "String: %s" x)
  ;; (find-grep-dired x "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/snippets")
  (find-grep-dired "/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/spacemacs.d/snippets" x)
  )

(defun my/commit_answer()
  (interactive)
  (shell-command "ruby \"/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/settings/myfun/commit_answer.rb\"")
  )

(defun my/search_rspec(x)
  (interactive "MEnter Rspec String to search:")
  ;; (ag-dired-regexp x "/Users/ok/Dropbox/source/rspec")
  (find-grep-dired "/Users/ok/Dropbox/source/rspec" x)
  )

(defun my/search_rails(x)
  (interactive "MEnter Rails String:")
  ;; (find-grep-dired x "/Users/ok/Dropbox/source/rails")
  (find-grep-dired "/Users/ok/Dropbox/source/rails" x)
  )
;;如何等待输入
(defun my/commit_question();;(x)
  "Ask age."
  ;; (interactive "nEnter your age: ")
  (interactive)
  ;; (message "Name: %d" x)
  ;; (projectile-run-shell-command-in-root "echo \"dfd\" %d" x)
  ;; (shell-command "echo \"dfd\"")
  (progn
    (projectile-run-shell)
    )
  )

                                        ; (defun my/commit_question()
                                        ;   (interactive)
                                        ;   (projectile-run-shell-command-in-root "ruby \"/Users/ok/Library/Mobile Documents/com~apple~CloudDocs/settings/myfun/commit_question.rb\"")
                                        ;   )
                                        ; (defun my/push_answer()
                                        ;   (interactive)
                                        ;   (shell-command
                                        ;    (format "/Users/ok/.rbenv/shims/ruby /Users/ok/github/myfun/commit_answer.rb %s"
                                        ;            (shell-quote-argument (buffer-file-name))))
                                        ;   (revert-buffer t t t)
                                        ;   )
;;org mode自动实现格式化代码
(defun indent-org-block-automatically ()
  (when (org-in-src-block-p)
    (org-edit-special)
    (indent-region (point-min) (point-max))
    (org-edit-src-exit)))
(defun my/practise()
  (interactive)
  (progn
    (org-open-file "/Users/ok/Dropbox/org/itplace_practise/question_answer.org" )
    )
  )

;;设置启动项目
(defun my/teacher()
  (interactive)
  (progn
    (dired-other-frame "~/Teacher/.")
    )


  ;; (split-window-horizontally) ;; -> |
  ;; (next-multiframe-window)
  ;; (find-file "~/github/web/www/app/controllers/application_controller.rb")
  ;; (split-window-vertically) ;;  -> --

  ;; (next-multiframe-window)

  ;; (find-file "~/.spacemacs.d/mycus.el")
  ;; (next-multiframe-window)
  ;; (dired "~/github/web/www/.")
  ;; (find-file "~/github/web/www/app/views/static_pages/home.html.erb")
  )
(defun my/myfun()
  (interactive)
  (dired-other-frame "~/github/myfun/.")
  ;; (split-window-horizontally) ;; -> |
  ;; (next-multiframe-window)
  ;; (find-file "~/github/web/www/app/controllers/application_controller.rb")
  ;; (split-window-vertically) ;;  -> --

  ;; (next-multiframe-window)

  ;; (find-file "~/.spacemacs.d/mycus.el")
  ;; (next-multiframe-window)
  ;; (dired "~/github/web/www/.")
  ;; (find-file "~/github/web/www/app/views/static_pages/home.html.erb")
  )

(defun my/www()
  (interactive)
  ( dired-other-frame"~/github/www/.")
  ;; (split-window-horizontally) ;; -> |
  ;; (next-multiframe-window)
  ;; (find-file "~/github/web/www/app/controllers/application_controller.rb")
  ;; (split-window-vertically) ;;  -> --

  ;; (next-multiframe-window)

  ;; (find-file "~/.spacemacs.d/mycus.el")
  ;; (next-multiframe-window)
  ;; (dired "~/github/web/www/.")
  ;; (find-file "~/github/web/www/app/views/static_pages/home.html.erb")
  )
(defun my/appserver()
  (interactive)
  (dired-other-frame "~/github/appserver/.")
  ;; (split-window-horizontally) ;; -> |
  ;; (next-multiframe-window)
  ;; (find-file "~/github/web/www/app/controllers/application_controller.rb")
  ;; (split-window-vertically) ;;  -> kjkj--

  ;; (next-multiframe-window)

  ;; (find-file "~/.spacemacs.d/mycus.el")
  ;; (next-multiframe-window)
  ;; (dired "~/github/web/www/.")
  ;; (find-file "~/github/web/www/app/views/static_pages/home.html.erb")
  )
