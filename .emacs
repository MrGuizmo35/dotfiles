(package-initialize)
;;emacs is broken on mac without this
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
;;melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/evil")
;;evil mode!
(require 'evil)
(evil-mode 1)

(global-undo-tree-mode)
;;helm fuzzy completion on mini-buffer
(require 'helm-config)
(helm-mode 1)

;;relative numbering
(require 'linum-relative)
(linum-relative-global-mode 1)

;;snippets manager
(require 'yasnippet)
(yas-global-mode 1)

;;aggressive indent
(global-aggressive-indent-mode 1)

;;auto-complete
(ac-config-default)

;;powerline
(require 'powerline)
(powerline-evil-vim-theme)

;;hooks rainbow delimiters to prog mode
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;;correct tabs and indent style
(setq c-default-style "linux"
      c-basic-offset 4
      tab-width 4
      indent-tabs-mode t)
;;set theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
	("8ed752276957903a270c797c4ab52931199806ccd9f0c3bb77f6f4b9e71b9272" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;global highlight current line
(global-hl-line-mode 1)
