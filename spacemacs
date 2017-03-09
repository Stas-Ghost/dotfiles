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
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     javascript
     html
     php
     (scala :variables
            scala-auto-start-ensime t
            scala-enable-eldoc t
            )
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion
      :disabled-for org org-mode
      :variables
      auto-completion-enable-help-tooltip t
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-sort-by-usage t)
     better-defaults
     clojure
     emacs-lisp
     git
     markdown
     (org :variables
          org-enable-reveal-js-support t)
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control
     yaml
     ansible
     dash
     ;; esoteric
     nim
     rust
     ponylang
     swift
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     key-chord
     sr-speedbar
     ranger
     aggressive-indent
     helm-cider
     visual-regexp
     ;; ob-clojure
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   doqtspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

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
   dotspacemacs-elpa-timeout 7
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 19
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
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 1
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize t ;; CHANGED
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header t ;;CHANGED
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
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
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t ;; CHANGED
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil ;; CHANGED
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
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."

  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '("ensime" . "melpa-stable") package-pinned-packages)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (spacemacs/toggle-truncate-lines-on)
  ;; Visual line navigation for textual modes
  (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)

  '(version-control :variables version-control-diff-tool 'diff-hl)
  '(version-control :variables version-control-global-margin t)
  (diff-hl-flydiff-mode)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((clojure . t)
     (emacs-lisp . t)
     (sh . t)
     ))
  (setq org-babel-clojure-backend 'cider)
  (customize-save-variable 'org-confirm-babel-evaluate nil)

  (setq org-default-notes-file "~/Dropbox/notes/2017.org")
  (setq org-capture-templates
        '(("t" "Todo" entry (file+datetree "~/Dropbox/notes/2017.org")
           "** TODO %?\n  %i\n  %a")
          ("j" "Journal" entry (file+datetree "~/Dropbox/notes/2017.org")
           "** %?\n %i\n From: %a")))

  (setq org-todo-keywords
        '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

  ;; (setq projectile-switch-project-action 'neotree-projectile-action)

  ;; TRAMP remote sudo
  ;; (set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

  ;; (require 'key-chord)
  (key-chord-mode +1)
  (key-chord-define-global "jj" 'avy-goto-word-1)
  (key-chord-define-global "jl" 'avy-goto-line)
  (key-chord-define-global "jk" 'avy-goto-char)
  ;; (key-chord-define-global "JJ" 'prelude-switch-to-previous-buffer)
  ;; (key-chord-define-global "uu" 'undo-tree-visualize)
  (key-chord-define-global "xx" 'helm-M-x)
  (key-chord-define-global "yy" 'helm-show-kill-ring)
  (key-chord-define-global "bb" 'helm-mini)
  (key-chord-define-global "qq" 'ranger)

  (defun duplicate-current-line-or-region (arg)
    "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
    (interactive "p")
    (let (beg end (origin (point)))
      (if (and mark-active (> (point) (mark)))
          (exchange-point-and-mark))
      (setq beg (line-beginning-position))
      (if mark-active
          (exchange-point-and-mark))
      (setq end (line-end-position))
      (let ((region (buffer-substring-no-properties beg end)))
        (dotimes (i arg)
          (goto-char end)
          (newline)
          (insert region)
          (setq end (point)))
        (goto-char (+ origin (* (length region) arg) arg)))))

  (key-chord-define-global "dd" 'duplicate-current-line-or-region)

  (defun comment-and-goto-next (&optional arg)
    (interactive "p")
    (spacemacs/comment-or-uncomment-lines arg)
    (next-line))

  (key-chord-define-global ";;" 'comment-and-goto-next)

  ;; clipboard
  (customize-save-variable 'x-select-enable-clipboard t)
  (customize-save-variable 'save-interprogram-paste-before-kill t)
  (customize-save-variable 'interprogram-paste-function 'x-cut-buffer-or-selection-value)

  ;;  smartparens
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (sp-use-smartparens-bindings)
  (show-smartparens-global-mode t)
  (sp-pair "(" ")" :wrap "C-(")

  ;;  Reloads file from disk
  (global-auto-revert-mode t)

  ;;  Speedbar
  (global-set-key [f7] 'sr-speedbar-toggle)
  (global-set-key [f8] 'sr-speedbar-select-window)

  ;; nim
  (setq nim-nimsuggest-path "/usr/bin/nimsuggest")
  (add-to-list 'company-backends
               '(company-nim :with company-nim-builtin))
  (add-hook 'nim-mode-hook 'company-mode)

  ;; company
  (global-company-mode)

  ;; rust
  (setq-default rust-enable-racer t)
  (setq-default rust-format-on-save t)

  ;; ranger
  (setq ranger-override-dired t)

  ;; aggresive ident mode
  (global-aggressive-indent-mode 1)
  (add-to-list 'aggressive-indent-excluded-modes 'scala-mode)

  (helm-cider-mode 1)

  (define-key global-map (kbd "C-c r") 'vr/replace)
  (define-key global-map (kbd "C-c q") 'vr/query-replace)

  ;; helm-dash
  (defvar helm-dash-docset-newpath "/home/ghost/.local/share/Zeal/Zeal/docsets")
  (setq helm-dash-browser-func 'eww-browse-url)
  (setq browse-url-browser-function 'eww-browse-url)
  ;; (setq browse-url-browser-function 'browse-url-generic
  ;; browse-url-generic-program "/usr/bin/firefox-beta")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(cider-apropos-actions
     (quote
      (("find-def" . cider--find-var)
       ("lookup-on-grimoire" . cider-grimoire-lookup))))
   '(company-global-modes (quote (not org org-mode)))
   '(evil-want-Y-yank-to-eol t)
   '(helm-cider-apropos-actions
     (quote
      (("Find definition" lambda
        (candidate)
        (cider-find-var nil candidate))
       ("Find on Grimoire" . cider-grimoire-lookup))))
   '(interprogram-paste-function (quote x-cut-buffer-or-selection-value) t)
   '(org-agenda-files
     (quote
      ("~/Dropbox/notes/2017.org" "~/Dropbox/notes/everyday.org")))
   '(org-confirm-babel-evaluate nil)
   '(org-support-shift-select t)
   '(package-selected-packages
     (quote
      (zenburn-theme unfill solarized-theme monokai-theme window-purpose imenu-list fuzzy company-ansible helm-purpose swift-mode flycheck-pony pony-snippets ponylang-mode winum hide-comnt alert elfeed-web elfeed-org elfeed-goodies ace-jump-mode noflet zeal-at-point xkcd twittering-mode helm-dash simple-httpd elfeed deft stickyfunc-enhance srefactor smex ibuffer-projectile visual-regexp eshell-z bind-map web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data ox-reveal hydra edn paredit peg queue highlight magit-popup powerline company org pcache dumb-jump column-enforce-mode clojure-snippets cargo rust-mode auto-complete inflections multiple-cursors anzu git-gutter seq async yasnippet dash phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode helm-cider evil-unimpaired uuidgen org-projectile org-download mwim link-hint jinja2-mode git-link eyebrowse evil-visual-mark-mode cider clojure-mode f iedit smartparens undo-tree flycheck helm-core markdown-mode s magit git-commit with-editor hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore request helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag helm yaml-mode xterm-color ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe use-package toml-mode toc-org sr-speedbar spacemacs-theme spaceline smooth-scrolling smeargle shell-pop restart-emacs ranger rainbow-delimiters racer quelpa projectile popwin persp-mode pcre2el parent-mode paradox page-break-lines orgit org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file nim-mode neotree multi-term move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme key-chord info+ indent-guide ido-vertical-mode hungry-delete htmlize helm-themes google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-gutter-fringe git-gutter-fringe+ gh-md flycheck-rust flycheck-pos-tip flycheck-nim flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eshell-prompt-extras esh-help elisp-slime-nav diff-hl define-word company-statistics company-racer company-quickhelp clj-refactor clean-aindent-mode cider-eval-sexp-fu buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile ansible-doc ansible aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
   '(save-interprogram-paste-before-kill t)
   '(scroll-bar-mode nil)
   '(select-enable-clipboard t)
   '(spaceline-show-default-input-method t)
   '(speedbar-directory-unshown-regexp "^$")
   '(speedbar-show-unknown-files t)
   '(speedbar-supported-extension-expressions
     (quote
      ("\\.\\(inc\\|php[s345]?\\|phtml\\)" ".org" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".clj" ".cljs")))
   '(speedbar-use-images nil)
   '(sr-speedbar-auto-refresh t)
   '(sr-speedbar-default-width 40)
   '(sr-speedbar-delete-windows t)
   '(sr-speedbar-max-width 40)
   '(sr-speedbar-skip-other-window-p t)
   '(vc-follow-symlinks t))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
   '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
  )
