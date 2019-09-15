;; Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; Emacs Appearance 
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Smex
(unless (package-installed-p 'smex)
  (package-install 'smex))
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Evil mode
(unless (package-installed-p 'evil)
  (package-install 'evil))
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Autocomplete
(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(require 'auto-complete)
(global-auto-complete-mode t)

;; C autocomplete
(unless (package-installed-p 'company)
  (package-install 'company))
(require 'company)
(add-hook 'global-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)

;; C code
(setq c-default-style "linux")

;; Theme
(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-theme))
(add-hook 'after-init-hook (lambda () (load-theme 'gruvbox-dark-medium)))

;; Misc
(setq shift-select-mode t)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq make-backup-files nil)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fca1a1be71d2ec3e18bb96d503ffbe8944eff4be60cdaa83924fd23e81a0e610" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" default)))
 '(package-selected-packages
   (quote
    (xresources-theme smex company-irony-c-headers undo-tree evil gruvbox-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
