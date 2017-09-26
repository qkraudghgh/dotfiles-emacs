(global-linum-mode 1)
(menu-bar-mode -1)
(xterm-mouse-mode t)
(setq linum-format "%d ")
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq scroll-step 1)
(setq hscroll-step 1)
(setq js-indent-level 2)

;; package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))
;; customize
(package-initialize)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))

(add-hook 'web-mode-hook
		  (lambda ()
			(setq web-mode-markup-indent-offset 2)
			(setq web-mode-css-indent-offset 2)))

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'nord t)

(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)

(require 'multiple-cursors)
(global-set-key (kbd "C-c d") 'mc/mark-next-like-this)
(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)

;; company-mode
(add-hook 'elixir-mode-hook 'alchemist-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'alchemist-mode-hook 'alchemist-phoenix-mode)

;; alchemist setting
(setq alchemist-mix-command "~/.kiex/elixirs/elixir-1.5.1/bin/mix")
(setq alchemist-iex-program-name "~/.kiex/elixirs/elixir-1.5.1/bin/iex") ;; default: iex
(setq alchemist-execute-command "~/.kiex/elixirs/elixir-1.5.1/bin/elixir") ;; default: elixir
(setq alchemist-compile-command "~/.kiex/elixirs/elixir-1.5.1/bin/elixirc") ;; default: elixirc
(setq alchemist-test-status-modeline nil)

;; don't make # files and backup file
(setq make-backup-files nil)
(setq auto-save-default nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; neotree keyset
(global-set-key [f8] 'neotree-toggle)

;; fiplr setting
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs '((directories (".git" ".svn" "node_modules" "_build" "deps" "files" "test"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))
(global-set-key (kbd "C-x t") 'fiplr-find-file)

(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (multiple-cursors fiplr elixir-mode markdown-mode org web-mode alchemist neotree nord-theme magit ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
