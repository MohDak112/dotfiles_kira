;; Font
(set-face-attribute 'default nil
                    :font "Cascadia Code"
                    :height 110) ;; 110 = 11pt

;; Editor configs
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(global-display-line-numbers-mode 1)
(blink-cursor-mode 0)

(electric-pair-mode 1)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq scroll-margin 7
      scroll-conservatively 101
      scroll-step 1)

;; Backup directory
(setq backup-directory-alist
      `(("." . "~/.cache/emacs/backups/")))
(make-directory "~/.cache/emacs/backups/" t)

;; Backup files
(setq make-backup-files t)

;; Do not create lockfiles
(setq create-lockfiles nil)

;; Packages
(require 'package)
(add-to-list 'package-archives
             '(("melpa" . "https://melpa.org/packages/")
	     ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Evil mode
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

;; Gruvbox dark hard theme
(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-hard t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
