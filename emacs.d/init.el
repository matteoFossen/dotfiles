(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package) (package-install 'use-package)) ; install use-package with package.el
(require 'use-package-ensure)                                              ; ensure that it installs automatically
(setq use-package-always-ensure t)
(require 'use-package)                                                     ; load use-package at Emacs startup

(set-face-attribute 'default nil
     :family "JetBrainsMono Nerd Font"
     :height 140
     :weight 'normal
     :width 'normal)

(set-face-attribute 'variable-pitch nil
     :family "JetBrainsMono Nerd Font"
     :height 140
     :weight 'normal
     :width 'normal)

(set-face-attribute 'fixed-pitch nil
     :family "JetBrainsMono Nerd Font"
     :height 140
     :weight 'normal
     :width 'normal)

(add-to-list 'default-frame-alist '(font . "JetBrainsMono Nerd Font 11"))

(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-function-name-face nil :slant 'italic)
(set-face-attribute 'font-lock-variable-name-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)

(setq custom-file "~/.config/emacs/custom.el")
(setq inhibit-splash-screen t) ; disable startup screen
(menu-bar-mode -1)             ; disable the menu bar below the application window
(tool-bar-mode -1)             ; disable the Emacs tool bar 
(scroll-bar-mode -1)           ; disable the scroll bar
(global-visual-line-mode t)    ; disable visual line mode
(auto-save-mode nil)           ; don't auto save files by default
(buffer-face-mode 1)           ; so that different fonts can be used on different buffers if needed
(setq auto-save-default nil)   ; set the default file location of auto-saved files to NIL
(add-to-list 'load-path (expand-file-name "~/.config/emacs/lisp/"))     ; load all user-defined Emacs Lisp scripts from this directory
(let ((default-directory  "~.config/emacs/lisp/")) (normal-top-level-add-to-load-path '("*")))
(setq use-short-answers t)     ; so that yes/no questions in the minibuffer can be answered using y/n
(setq-default tab-width 2)     ; make default tab spacing 2
(delete-selection-mode 1)      ; select text and automatically overwrite without typing backspace
(setq browse-url-generic-program "xdg-open") ; open URLs in the default web browser (not EWW) using XDG's util

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (evil-mode 1)

  :config
  (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
  (evil-define-key 'normal org-mode-map (kbd "RET") 'org-enter-maybe-execute-code)
  (evil-set-undo-system 'undo-tree))
(require 'evil-vars)

;; (use-package catppuccin-theme
;;   :init
;;   (load-theme 'catppuccin t))
;; (setq catppuccin-flavor 'latte)
;; (catppuccin-reload)
(use-package gruvbox-theme
  :init
  (load-theme 'gruvbox t))


(use-package magit
  :custom
  (custom-set-faces
     '(magit-diff-hunk-heading-highlight ((t (:background "#282c34"))))
     '(magit-diff-context-highlight ((t (:background "#3e4452"))))))

(use-package company
  :hook
  (prog-mode . global-company-mode)
  (prog-mode . company-tng-mode)
  (prog-mode . electric-pair-mode)
  (org-src-mode . company-mode)

  :config
  (setq company-idle-delay 0
        company-minimum-prefix-length 2)

  :custom
  (custom-set-faces
   '(company-tooltip ((t (:background "#3e4452"))))
   '(company-tooltip-selection ((t (:background "#454c59"))))
   '(company-tooltip-common ((t (:background "#3e4452"))))
   '(company-scrollbar-bg ((t (:background "#282c34"))))))

(use-package lsp-mode
  :defer t
  :hook (python-mode . lsp)
  :hook (c-mode . lsp)
  :hook (c++-mode . lsp)
  :hook (rust-mode . lsp)
  :hook (ess-mode . lsp)
  :hook (go-mode . lsp)
  :config
  (setq lsp-auto-guess-root t)
  (defvar lsp-modeline-code-actions-segments '(count icon name)))

(use-package lsp-ui
  :commands lsp-ui-mode
  :custom
  (custom-set-faces
   '(lsp-ui-doc-header ((t :foreground "#abb2bf" :background "#454c59"))))

  :config
  (setq lsp-ui-doc-header t)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-doc-border "#e06c75")
  (setq lsp-ui-doc-show-with-cursor t)
  (setq lsp-ui-doc-position 'at-point)
  (setq lsp-ui-sideline-show-symbol t))

(use-package diff-hl
  :init
  (global-diff-hl-mode 1)
  (diff-hl-flydiff-mode)

  :custom
  (custom-set-faces
   '(diff-hl-change ((t (:background "#61afef"))))
   '(diff-hl-insert ((t (:background "#97c277"))))
   '(diff-hl-delete ((t (:background "#e06c75")))))

  :hook
  (prog-mode . diff-hl-mode)
  (magit-pre-refresh . diff-hl-magit-pre-refresh)
  (magit-post-refresh . diff-hl-magit-post-refresh))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode 1))
