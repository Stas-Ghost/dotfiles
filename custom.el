(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(beacon-blink-duration 0.2)
 '(beacon-size 30)
 '(cider-eval-result-duration 'command)
 '(cider-pprint-fn 'fipp)
 '(cider-repl-display-help-banner nil)
 '(cider-repl-print-length 40)
 '(cider-repl-use-pretty-printing nil)
 '(cider-save-file-on-load t)
 '(cider-save-files-on-cider-refresh t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(create-lockfiles nil)
 '(custom-enabled-themes '(solarized-light))
 '(custom-safe-themes
   '("7aaee3a00f6eb16836f5b28bdccde9e1079654060d26ce4b8f49b56689c51904" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "7152ab5bf548cc6215efc513442e7bb59de9eff4b5737eaed3a1a4f42789612c" "cdb4ffdecc682978da78700a461cdc77456c3a6df1c1803ae2dd55c59fa703e3" "6bf841f77d5eb01455d82ae436e3e25277daaef4ee855a3572589dad1b3ac4b3" "bea7148314bcbc2d33a21d301caaac02b2a0d69a585b4b967fa53a314529e861" "a68670dce845d18af9ec87716b4d4c2ea071271eccc80242be4d232c58b3cca2" "5cd4770f787ad997ca9243662728031766736fc12f310b822a93de3c51d81878" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default))
 '(dash-docs-docsets-path "/home/ghost/.local/share/Zeal/Zeal/docsets")
 '(fci-rule-color "#383838")
 '(flyspell-duplicate-distance 40000)
 '(flyspell-issue-message-flag nil)
 '(flyspell-issue-welcome-flag nil)
 '(helm-ag-fuzzy-match t)
 '(helm-ag-use-temp-buffer t)
 '(helm-dash-docsets-path "/home/ghost/.local/share/Zeal/Zeal/docsets")
 '(helm-dash-min-length 2)
 '(helm-etags-fuzzy-match t)
 '(helm-follow-mode-persistent t)
 '(helm-swoop-speed-or-color t)
 '(interprogram-paste-function 'x-cut-buffer-or-selection-value t)
 '(ispell-complete-word-dict nil)
 '(ispell-dictionary "en_US")
 '(ispell-silently-savep t)
 '(js-indent-level 2)
 '(mode-line-format
   '(" " "%e" mode-line-front-space mode-line-mule-info mode-line-modified mode-line-frame-identification mode-line-buffer-identification sml/pos-id-separator mode-line-position smartrep-mode-line-string
     (vc-mode vc-mode)
     sml/pre-modes-separator mode-line-modes mode-line-misc-info mode-line-end-spaces))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files
   '("~/Dropbox/notes/2020.org" "~/Dropbox/notes/2017.org" "~/Dropbox/notes/2018.org" "~/Dropbox/notes/2019.org"))
 '(org-confirm-babel-evaluate nil)
 '(org-startup-folded nil)
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(flycheck-clj-kondo olivetti company-tern tern eglot indium helm-ag gotest parseedn pos-tip flycheck-julia julia-repl julia-mode window-number flyspell-correct-popup go-rename bm rust-mode helm-bm f flyspell-correct transient lsp-mode parseclj rich-minority exec-path-from-shell helm-descbinds helm-projectile go-complete php-mode zprint-mode simpleclip lsp-ui company-lsp async ht counsel-dash backward-forward go-guru magit-popup go-projectile hl-todo avy cider clojure-mode ghub git-commit helm helm-core sesman scss-mode rjsx-mode company-go go-mode deadgrep ansible-doc ansible company-ansible with-editor yaml-mode dockerfile-mode clj-refactor cider-spy helm-swoop company-quickhelp indicators gtk-pomodoro-indicator counsel-etags csv-mode pkgbuild-mode company-terraform terraform-mode key-chord flycheck-joker reverse-im window-numbering shell-pop markdown-mode helm-dash solarized-theme solarized groovy-mode xclip prettier-js visual-regexp helm-cider aggressive-indent ranger geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company counsel swiper ivy zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(projectile-mode-line '(:eval (format " <%s>" (projectile-project-name))))
 '(ranger-cleanup-eagerly t t)
 '(ranger-max-tabs 3)
 '(save-interprogram-paste-before-kill t)
 '(select-enable-clipboard t)
 '(shell-pop-default-directory "~")
 '(shell-pop-full-span t)
 '(shell-pop-shell-type
   '("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell))))
 '(shell-pop-universal-key nil)
 '(telega-msg-show-sender-status t)
 '(telega-socks5-proxy nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(x-select-enable-clipboard t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(prelude-require-packages '(ranger
                            ansible
                            ;; ansible-doc
                            aggressive-indent
                            helm-cider
                            visual-regexp
                            which-key
                            reverse-im
                            flycheck-joker
                            crux
                            prettier-js
                            helm-ag
                            xclip
                            groovy-mode
                            ;; window-number
                            solarized-theme
                            helm-dash
                            helm-swoop
                            shell-pop
                            window-numbering
                            ;; company-terraform
                            terraform-mode
                            indicators
                            olivetti
                            ;; clj-refactor
                            ;; cider-spy
                            company-quickhelp
                            deadgrep
                            flyspell-correct-popup
                            bm
                            helm-bm
                            ;; julia-mode
                            ;; julia-repl
                            ;; flycheck-julia
                            rjsx-mode
                            tern
                            company-tern
                            flycheck-clj-kondo
                            ))
(window-numbering-mode)

(setq prelude-theme 'solarized-light)
;; (load-theme 'smart-mode-line-respectful)
(setq default-frame-alist '((font . "Source Code Pro-14")))
(scroll-bar-mode -1)
(setq prelude-guru nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((clojure . t)
   (emacs-lisp . t)
   (shell . t)
   (sql . t)
   ))

(setq org-babel-clojure-backend 'cider)
(customize-save-variable 'org-confirm-babel-evaluate nil)

(setq org-default-notes-file "~/Dropbox/notes/2021.org")
(setq org-capture-templates
      '(("t" "Todo" entry (file+datetree "~/Dropbox/notes/2021.org")
         "** TODO %?\n  %i")
        ("j" "Journal" entry (file+datetree "~/Dropbox/notes/2021.org")
         "** %?\n %i")
        ))

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))


;;(setq key-chord-two-keys-delay .05  key-chord-one-key-delay .1)

;; Moving
(key-chord-define-global "jj" 'avy-goto-word-1)
(key-chord-define-global "jl" 'avy-goto-line)
(key-chord-define-global "jk" 'avy-goto-char)

;; Helm
(key-chord-define-global "xx" 'helm-M-x)
(key-chord-define-global "yy" 'helm-show-kill-ring)
(key-chord-define-global "bb" 'helm-mini)

;; Help
(key-chord-define-global "hh" 'helm-dash)
(key-chord-define-global "HH" 'helm-dash-at-point)

;; Search
(key-chord-define-global "FF" 'helm-projectile-find-file)
(key-chord-define-global "GF" 'helm-projectile-find-file-in-known-projects)
(key-chord-define-global "ZZ" 'helm-imenu-in-all-buffers)
(key-chord-define-global "GS" 'projectile-ag)
;; f5

;; Other
(key-chord-define-global "JJ" 'crux-switch-to-previous-buffer)
(key-chord-define-global ";;" (crux-with-region-or-line comment-or-uncomment-region))
(key-chord-define-global "qq" 'ranger)

(key-chord-define-global "TT" 'shell-pop)
(key-chord-define-global "~~" 'org-capture)
(key-chord-define-global "GG" 'magit-status)
(key-chord-define-global "GB" 'magit-blame-addition)

;; (key-chord-define-global "uu" 'undo-tree-visualize)
;; (key-chord-define-global "DD" 'crux-duplicate-current-line-or-region)

;; Replace
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

(global-set-key [remap crux-visit-term-buffer]
                'shell-pop)

(require 'reverse-im)
(reverse-im-activate "russian-computer")


;; clipboard
(customize-save-variable 'x-select-enable-clipboard t)
(customize-save-variable 'save-interprogram-paste-before-kill t)
(customize-save-variable 'interprogram-paste-function 'x-cut-buffer-or-selection-value)

;;  smartparens
(sp-pair "(" ")" :wrap "C-(")
(smartparens-global-strict-mode)

;;  Reloads file from disk
(global-auto-revert-mode t)

;; company
(global-company-mode)
(setq tab-always-indent t)
;; if set tng wont work
(setq company-idle-delay 0.5)
(setq company-minimum-prefix-length 1)
;; (setq tab-always-indent 'complete
;;       completion-at-point-functions '(company-select-next))

;; company tab and go
(add-to-list 'company-frontends 'company-tng-frontend)
(company-tng-configure-default)
(define-key company-active-map (kbd "TAB") 'company-select-next)
(define-key company-active-map (kbd "<backtab>") 'company-select-previous)
(define-key company-active-map (kbd "RET") 'company-complete-selection)
;; (define-key company-mode-map [remap indent-for-tab-command] #'company-indent-or-complete-common)

(require 'flycheck-joker)

(global-flycheck-mode)

;; ranger
(setq ranger-override-dired t)
(setq helm-descbinds-window-style 'same-window)
(setq ranger-cleanup-eagerly t)
(setq ranger-show-hidden t)
(setq ranger-dont-show-binary t)
(setq ranger-max-preview-size 20)


;; golden-ratio-mode
;; (golden-ratio-mode 1)
;; (setq golden-ratio-auto-scale t)

;; aggresive ident mode
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'org-mode)
(add-to-list 'aggressive-indent-excluded-modes 'groovy-mode)
(add-to-list 'aggressive-indent-excluded-modes 'cider-repl)

(helm-cider-mode 1)

;; helm-dash
(require 'helm-dash)
(setq helm-dash-docset-newpath "/home/ghost/.local/share/Zeal/Zeal/docsets")
(setq helm-dash-browser-func 'eww-browse-url)
(setq browse-url-browser-function 'eww-browse-url)
;; (setq helm-dash-common-docsets (helm-dash-installed-docsets))
;; Sorting is necessary
(setq helm-dash-common-docsets '("tldr" "ClojureDocs" "Clojure" "Emacs_Lisp" "PostgreSQL" "Ansible"))
(setq dash-docs-enable-debugging nil)

;; it formats buffer and attempts to return to original position.
(defun cider-format-buffer-back () (interactive)
       (let (p)
         (setq p (point))
         (cider-format-buffer)
         (goto-char p))
       )

;; (defun add-clj-format-before-save () (interactive)
;;        (add-hook 'before-save-hook
;;                  'cider-format-buffer
;;                  t t))

(xclip-mode 1)

(add-hook 'clojure-mode-hook
          'add-clj-format-before-save)

;; (require 'company-terraform)
;; (company-terraform-init)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)
;; (cider-completion-flush-caches)

;; imenu
;; (setq imenu-auto-rescan t)
;; (setq imenu-use-popup-menu nil)
;; (add-hook 'cider-mode-hook #'imenu-add-menubar-index)



;; bookmarks
(setq bookmark-save-flag t)
(when (file-exists-p (concat user-emacs-directory "bookmarks"))
  (bookmark-load bookmark-default-file t))
(global-set-key (kbd "<f3>") 'bookmark-set)
(global-set-key (kbd "<f4>") 'bookmark-jump)
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list)
(setq bookmark-default-file
      (concat user-emacs-directory "bookmarks"))

(global-set-key (kbd "<M-return>") 'helm-etags-select)
(global-set-key (kbd "<C-M-return>") 'select-tags-table)

(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

;; tags
(defun tags-create (dir-name)
  (interactive "Directory: ")
  (let ((path (directory-file-name dir-name)))
    (shell-command
     (format "ctags -e -R -f %s/TAGS %s" path path))
    (visit-tags-table (format "%s/TAGS" path))))



;; Don't ask before re-reading changed TAGS files
(setq tags-revert-without-query t)
;; NO warning when loading large TAGS files
(setq large-file-warning-threshold nil)
;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (add-hook 'after-save-hook
;;                       'counsel-etags-virtual-update-tags 'append 'local)))

(require 'fringe)
(fringe-mode '(10 . 20))
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'left)

;; linums
;; (line-number-mode t)
;; (add-hook 'prog-mode-hook 'linum-mode)
;; (global-linum-mode  t)
;; (column-number-mode t)
(setq linum-format " %d ")


(defun fix-linum-size ()
  (interactive)
  (set-face-foreground 'linum "#242")
  (set-face-attribute 'linum nil :height 130))

(add-hook 'linum-mode-hook 'fix-linum-size)

(load "~/.emacs.d/personal/indicate-changes.el")
;; (global-indicate-change-mode)

(company-quickhelp-mode)

;; Helm swoop
(require 'helm-swoop)

(setq helm-swoop-pre-input-function
      (lambda () ""))

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "C-s") 'helm-swoop)
;; (global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
;; (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;; (global-set-key (kbd "C-s") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; When doing evil-search, hand the word over to helm-swoop
;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
;; (define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

(global-set-key (kbd "<f5>") #'deadgrep)

(cl-defun helm-file-human-size (size &optional (kbsize helm-default-kbsize))
  "Return a string showing SIZE of a file in human readable form.
SIZE can be an integer or a float depending it's value.
`file-attributes' will take care of that to avoid overflow error.
KBSIZE is a floating point number, defaulting to `helm-default-kbsize'."
  (cl-loop with result = (cons "B" size)
           for i in '("k" "M" "G" "T" "P" "E" "Z" "Y")
           while (>= (cdr result) kbsize)
           do (setq result (cons i (/ (cdr result) kbsize)))
           finally return
           (helm-acase (car result)
             ("B" (format "%s" size))
             (t (format "%.1f%s" (cdr result) it)))))

;; Spellchecker
;; (setq prelude-flyspell t)

;; (setenv "DICPATH" "/usr/share/hunspell")
;; (setenv "DICTIONARY" "en_US")

(setq ispell-program-name "hunspell")

;; aspell variant
;; https://stackoverflow.com/questions/50816864/adding-many-dictionaries-to-aspell
;;                 ;;"--add-extra-dicts=en_GB-variant_1.multi"

(add-to-list 'ispell-local-dictionary-alist
             '("en_US"
               "[[:alpha:]]" "[^[:alpha:]]"
               ;; "[a-zA-Z]"
               ;; "[^a-zA-Z]"
               "[']"
               nil
               ("-d" "en_US-large,ru_RU")
               nil utf-8))

(setq ispell-really-hunspell t)
;; (setq ispell-local-dictionary "en_US")
;; (setq ispell-dictionary "en_US")

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Disable spellcheck in strings
;; (setq flyspell-prog-text-faces
;;       (delq 'font-lock-string-face
;;             flyspell-prog-text-faces))


(setq flyspell-prog-text-faces
      '(font-lock-string-face
        font-lock-comment-face
        font-lock-doc-face
        font-lock-function-name-face
        font-lock-variable-name-face))

(require 'flyspell-correct-popup)

(defun fly-correct ()
  "Call `iedit-mode' or correct misspelling with flyspell, depending..."
  (interactive)
  (if (not (equal flyspell-previous-command this-command))
      ;; FIXME: This mostly works, but if there are two words on the
      ;; same line that are misspelled, it doesn't work quite right
      ;; when correcting the earlier word after correcting the later
      ;; one

      ;; First correction; auto correct
      (call-interactively 'flyspell-auto-correct-word)
    ;; First correction was not wanted; use popup to choose
    (progn
      (save-excursion
        (undo))  ; This doesn't move point, which I think may be the problem.
      (flyspell-region (line-beginning-position) (line-end-position))
      (call-interactively 'flyspell-correct-at-point))))

;; From https://github.com/d12frosted/flyspell-correct/issues/30

(define-key flyspell-mode-map (kbd "C-;") 'fly-correct)
(define-key popup-menu-keymap (kbd "TAB") #'popup-next)
(define-key popup-menu-keymap (kbd "<backtab>") #'popup-previous)


(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; https://github.com/magit/magit/issues/2708
;; FWIW it may be worth remembering that some users will have shell code executing in their $PROMPT_COMMAND that does git status (or at least git diff) type calls when generating their shell prompt.

;; bookmarks
(require 'bm)
(require 'helm-bm)

(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)

(global-set-key (kbd "<left-margin> <mouse-1>") 'bm-toggle-mouse)

(global-set-key (kbd "C-c b") 'helm-bm)

(setq bm-highlight-style 'bm-highlight-only-line)
;; (setq bm-highlight-style 'bm-highlight-line-and-fringe)

(setq bm-cycle-all-buffers t)

;; org clock
;; #+BEGIN: clocktable :maxlevel 4 :scope agenda :block thismonth
;; #+END:
(setq org-clock-idle-time 15)
(setq org-global-properties
      '(("Effort_ALL" .
         "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")))

;; Show lot of clocking history so it's easy to pick items off the `C-c I` list
(setq org-clock-history-length 23)

(defun eos/org-clock-in ()
  (interactive)
  (org-clock-in '(4)))

;; (global-set-key (kbd "C-c I") )
(key-chord-define-global "II" 'eos/org-clock-in)
(key-chord-define-global "IO" 'org-clock-out)

;; Change tasks to whatever when clocking in
;; (setq org-clock-in-switch-to-state "NEXT")
(setq org-clock-in-switch-to-state "")

;; Save clock data and state changes and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks
;; with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)
;; Clock out when moving task to a done state
(setq org-clock-out-when-done t)
;; Enable auto clock resolution for finding open clocks
(setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
;; Include current clocking task in clock reports
(setq org-clock-report-include-clocking-task t)
;; use pretty things for the clocktable
(setq org-pretty-entities t)


(global-set-key (kbd "<f1>") 'ignore)
(auto-save-visited-mode t)
;; super-save removed

(setq
 ;; scroll-conservatively 0                     ;; only 'jump' when moving this far
 scroll-margin 4                                ;; scroll N lines to screen edge
 ;;  scroll-conservatively scroll-margin
 ;; scroll-step 0                                  ;; keyboard scroll one line at a time
                                        ;  mouse-wheel-scroll-amount '(6 ((shift) . 1))   ;; mouse scroll N lines

 ;;  mouse-wheel-progressive-speed nil              ;; don't accelerate scrolling

 ;;  ;; redisplay-dont-pause nil                         ;; don't pause display on input

 ;;  ;; Always redraw immediately when scrolling,
 ;;  ;; more responsive and doesn't hang!
 fast-but-imprecise-scrolling t
 jit-lock-defer-time 0
 )

(set-default 'truncate-lines nil)

;; JS
;; (add-to-list 'company-backends 'company-tern)
;; (add-hook 'js2-mode-hook (lambda ()
;;                            (tern-mode)
;;                            (prettier-js-mode)
;;                            (company-mode)))

;; (add-to-list 'magic-mode-alist '(".*\n?import React" . rjsx-mode))
;; (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; Disable completion keybindings, as we use xref-js2 instead
;; (define-key tern-mode-keymap (kbd "M-.") nil)
;; (define-key tern-mode-keymap (kbd "M-,") nil)


;; Redraw on up
;; (defun my-up ()
;;   (interactive)
;;   (previous-line)
;;   (redraw-frame))

;; (global-set-key (kbd "<up>") 'my-up)

;; Olivetti
;; Look & Feel for long-form writing

;; Set the body text width
(setq olivetti-body-width 80)

;; Enable Olivetti for text-related mode such as Org Mode
;; (add-hook 'text-mode-hook 'olivetti-mode)

(require 'org-tempo)


(require 'flycheck-clj-kondo)
(dolist (checker '(clj-kondo-clj clj-kondo-cljs clj-kondo-cljc clj-kondo-edn))
  (setq flycheck-checkers (cons checker (delq checker flycheck-checkers))))
(dolist (checkers '((clj-kondo-clj . clojure-joker)
                    (clj-kondo-cljs . clojurescript-joker)
                    (clj-kondo-cljc . clojure-joker)
                    (clj-kondo-edn . edn-joker)))
  (flycheck-add-next-checker (car checkers) (cons 'error (cdr checkers))))
