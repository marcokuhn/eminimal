(require-package 'helm)
(require-package 'projectile)
(require-package 'helm-projectile)
(require-package 'helm-ls-git)
(require-package 'helm-swoop)
(require-package 'helm-git-grep)

(require 'helm-config)

(helm-mode)

(diminish 'helm-mode)

(setq helm-m-occur-idle-delay 0.1)

(define-key helm-map (kbd "SPC") 'helm-exit-minibuffer)
(global-set-key (kbd "C-c C-k") 'helm-show-kill-ring)

(global-set-key (kbd "C-SPC") 'helm-mini)
(global-set-key (kbd "M-RET") 'helm-mini)

(global-set-key (kbd "s-b") 'helm-buffers-list)
(global-set-key (kbd "s-g") 'helm-git-grep)
(global-set-key (kbd "s-r") 'helm-recentf)
(global-set-key (kbd "s-o") 'helm-occur)
(global-set-key (kbd "s-8") 'helm-swoop)
(global-set-key (kbd "s-i") 'helm-imenu)




