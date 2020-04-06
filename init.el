
; package list
; use-package
; evil-mode
; magit
; ivy/swiper X
; zenburn theme X 
; tags stuff
; ace jump X
; counsel x
; centaur tabs X
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(setq load-prefer-newer t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(electric-indent-mode 0)
(setq tab-always-indent nil)

(setq-default tab-width 4)

(setq-default c-basic-offset 2)

(global-auto-revert-mode t)
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands

    (transient-mark-mode 1) ;; No region when it is not highlighted
    (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

(use-package rainbow-identifiers
  :ensure t
  :hook ((prog-mode text-mode) . rainbow-identifiers-mode)
  )
(use-package rainbow-delimiters
             :ensure t
             :hook
             ((prog-mode text-mode). rainbow-delimiters-mode)

             )
(use-package highlight-indent-guides
             :ensure t
             :hook
             (prog-mode . highlight-indent-guides-mode)
             ) 

(use-package linum-relative
             :ensure t
             :hook
             (prog-mode . linum-relative-mode)
             :config
             (progn 
             (linum-on)
             (setq linum-relative-current-symbol "")
             )
             )

(use-package centaur-tabs
  :demand
  :ensure t
  :config
  (centaur-tabs-mode t)
  :bind
  ;("C-." . centaur-tabs-backward)
  ("C-," . centaur-tabs-forward))

(use-package zenburn-theme
             :ensure t
:config
(load-theme 'zenburn t)
)

(use-package magit
    :ensure t)

(use-package evil
    :ensure t

    :config
    (evil-mode 1)
)


(use-package evil-magit 
  :ensure t
  :config
  (require 'evil-magit) 
)


(use-package ace-jump-mode
             :ensure t
             :config
             (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
             )

(use-package ivy 
             :ensure t
             :config
             (progn
               (ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

)
             )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-complete-exuberant-ctags auto-complete-c-headers auto-complete ggtags evil-magit treemacs counsel ace-jump-mode zenburn-theme evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
