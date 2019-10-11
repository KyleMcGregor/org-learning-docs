


(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/")t)

(tool-bar-mode 0)
(menu-bar-mode 0)

(load-theme 'wombat)
(semantic-mode 1)
(require 'company)
(company-mode 1)
(require 'helm)
(helm-mode 1)

(require 'yasnippet)
(require 'yasnippet-snippets)
(yas-global-mode t)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f2>") 'helm-buffers-list)
(global-set-key (kbd "<f3>") 'helm-M-x)
(global-set-key (kbd "<f4>") 'helm-find-files)

(global-set-key (kbd "<M-right>") 'next-multiframe-window)
(global-set-key (kbd "<M-left>") 'previous-multiframe-window)

(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice (quote remember-notes))
 '(initial-scratch-message nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t))))
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   (quote
    (zygospore yasnippet-snippets ws-butler volatile-highlights use-package iedit helm-swoop helm-projectile helm-gtags dtrt-indent darcula-theme company comment-dwim-2 anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-hook 'org-mode-hook
	  (kbd "<f9>") 'org-babel-execute-src-block)

(global-set-key (kbd "<M-left>") 'previous-multiframe-window)
(global-set-key (kbd "<M-right>") 'next-multiframe-window)
(global-set-key (kbd "<M-up>") 'next-buffer)
(global-set-key (kbd "<M-down>") 'previous-buffer)


