;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/Library/Mobile Documents/com~apple~CloudDocs/emacs/settings/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     (spacemacs-layouts :variables
                        spacemacs-layouts-directory "~/.spacemacs.d/layouts/")
     (colors :variables
             colors-enable-nyan-cat-progress-bar t
             colors-enable-rainbow-identifiers t)
     osx
     dash
     smex
     yaml
     ;; (chinese :variables
     ;;          chinese-default-input-method 'pyim
     ;;          chinese-enable-youdao-dict t
     ;;          )
     ;;有可能是bug,在这里写变量会导致丢失pyim
     chinese
     ;; (chinese :variables chinese-default-input-method 'pyim chinese-enable-youdao-dict t)
     oyqx
     html
     (ruby :variables ruby-version-manager 'rbevn
           ruby-test-runner 'rspec
           )
     ruby-on-rails
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      ;;  auto-completion-tab-key-behavior 'cycleexcluded
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-enable-snippets-in-popup t
                      ;;auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-complete-with-key-sequence-delay 0.5

                      )

     ;; auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     ;; version-control
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the

   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(quickrun ox-twbs bongo )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when downloading packages.
   ;; Possible values are `used', `used-but-keep-unused' and `all'. `used' will
   ;; download only explicitly used packages and remove any unused packages as
   ;; well as their dependencies. `used-but-keep-unused' will download only the
   ;; used packages but won't delete them if they become unused. `all' will
   ;; download all the packages regardless if they are used or not and packages
   ;; won't be deleted by Spacemacs. (default is `used')
   dotspacemacs-download-packages 'used))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of of
   ;; the form `(list-type . list-size)`. If nil it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-dark
                         solarized-light
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'right-then-bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; (setq socks-server '("Default server" "127.0.0.1" 7070 5))
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "https://elpa.zilongshanren.com/melpa/")
          ("org-cn"   . "https://elpa.zilongshanren.com/org/")
          ("gnu-cn"   . "https://elpa.zilongshanren.com/gnu/")))

  )
(setq chinese-enable-youdao-dict t)
(setq scroll-conservatively 101) ;; move minimum when cursor exits view, instead of recentering
(setq mouse-wheel-scroll-amount '(1)) ;; mouse scroll moves 1 line at a time, instead of 5 lines
(setq mouse-wheel-progressive-speed nil) ;; on a long mouse scroll keep scrolling by 1 line
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;org mode
  ;; (setq org-link-file-path-type 'absolute)
  (spacemacs//set-monospaced-font   "Source Code Pro" "方正硬笔楷书简体" 14 18) ;设置等宽字体

  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  (setq yas-snippet-dirs "~/.spacemacs.d/snippets")
  (setq  company-idle-delay 0.01)
  (setq  companSEEDDsz-minimum-prefix-length 1)

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
  ;;org mode自动实现格式化代码
  (defun indent-org-block-automatically ()
    (when (org-in-src-block-p)
      (org-edit-special)
      (indent-region (point-min) (point-max))
      (org-edit-src-exit)))
  ;;设置启动项目
  (defun my/teacher()
    (interactive)
    (delete-other-windows)
    (neotree-dir  "~/Teacher/.")
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
    (delete-other-windows)
    (neotree-dir "~/github/myfun/.")
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
    (delete-other-windows)
    (neotree-dir "~/github/www/.")
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
    (delete-other-windows)
    (neotree-dir "~/github/appserver/.")
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

  (defun my/manager()
    ;; /Users/ok/github/app_all/appServerManage
    (interactive)
    (delete-other-windows)
    (neotree-dir "/Users/ok/github/app_all/appServerManage/.")
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
  ;; ;; 退出编辑模式自动切换输入法
  ;; (defun exit-pyim()
  ;;  message "yesk"
  ;;   )

  ;; ;;fasjdifouasdfiousdf
  ;; (add-hook 'evil-insert-state-exit-hook 'exit-pyim)
  ;;del往上移动10行
  (define-key evil-normal-state-map (kbd "DEL") (lambda ()
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

  (setq neo-smart-open t)
  (run-at-time 1 10 'indent-org-block-automatically)
  (delete-selection-mode t)             ;;设置黏贴为替换,而不是append
  ;; search global
  (global-set-key (kbd "s-w") 'er/expand-region)
  (spacemacs/set-leader-keys "odp" 'youdao-dictionary-search-at-point+)
  (spacemacs/set-leader-keys "odf" 'find-by-pinyin-dired)
  (global-set-key (kbd "s-f") 'helm-ag)
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
  (spacemacs/set-leader-keys "ogc" 'magit-commit)
  (spacemacs/set-leader-keys "ogp" 'magit-push-current)
  (spacemacs/set-leader-keys "ogr" 'vc-revert-buffer)

  (spacemacs/set-leader-keys "me" 'quickrun)
  (global-set-key (kbd "s-g") 'avy-goto-char)
  (global-set-key (kbd "s-<left>") 'doc-view-last-page)
  (global-set-key (kbd "s-<right>") 'doc-view-next-page)
  (global-set-key [f8] 'neotree-toggle)
  ;;行首行尾跳转
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

  (defun evil-undefine ()
    (interactive)
    (let (evil-mode-map-alist)
      (call-interactively (key-binding (this-command-keys)))))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("557c283f4f9d461f897b8cac5329f1f39fac785aa684b78949ff329c33f947ec" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#20240E" t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#20240E" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#20240E" . 100))))
 '(magit-diff-use-overlays nil)
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(pyim-dicts
   (quote
    ((:name "BigDict-01" :file "/Users/ok/.emacs.d/.cache/pyim-bigdict.pyim.gz" :coding utf-8-unix :dict-type pinyin-dict))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#20240E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
