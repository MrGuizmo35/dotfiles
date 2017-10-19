(package-initialize)
;;emacs is broken on mac without this
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
;;melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(setq package-list '(rainbow-delimiters monokai-theme powerline-evil powerline auto-complete yasnippet linum-relative helm popup helm-core ace-window aggressive-indent anzu avy beacon browse-kill-ring crux diff-hl diminish discover-my-major easy-kill editorconfig evil expand-region flycheck gist gh git-timemachine gitconfig-mode gitignore-mode god-mode goto-chg grizzl guru-mode imenu-anywhere logito magit git-commit magit-popup makey marshal ht move-text operate-on-number ov pcache projectile pkg-info epl s seq smart-mode-line rich-minority smartparens dash smartrep undo-tree volatile-highlights which-key with-editor async zop-to-char))
;;activate all the packages (in particular autoloads)
(package-initialize)

;;fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;;install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'evil)
(evil-mode 1)

(require 'undo-tree)
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
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;;auto-complete
(ac-config-default)

;;powerline
(require 'powerline)
(powerline-evil-vim-theme)

;;hooks rainbow delimiters to prog mode
(require 'rainbow-delimiters)
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
