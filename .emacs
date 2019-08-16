(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (helm helm-gtags tabbar tabbar-ruler))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; make {copy, cut, paste, undo} have {C-c, C-x, C-v, C-z} keys
;;(cua-mode 1)
;; auto insert closing bracket
(electric-pair-mode 1)
;; make cursor movement stop in between camelCase words.
(global-subword-mode 1)
;; make typing delete/overwrites selected text
(delete-selection-mode 1)
;; turn on highlighting current line
(global-hl-line-mode 1)
;; turn on bracket match highlight
(show-paren-mode 1)
;; remember cursor position. When file is opened, put cursor at last position
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode 1))
;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; Display lines number by default
(global-linum-mode t)
;; Display line number wider
(setq linum-format "%3d\u2502 ")
;; To delete
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;; show cursor position within line
(column-number-mode 1)
;; when a file is updated outside emacs, make it update if it's already opened in emacs
(global-auto-revert-mode 1)
;; keep a list of recently opened files
(require 'recentf)
(recentf-mode 1)
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))
(global-hl-line-mode 1)
(set-face-background 'highlight "#333")
(set-face-foreground 'highlight nil)
;;(set-face-underline-p 'highlight t)
(electric-pair-mode 1)
