(require-package 'projectile)
(require-package 'diminish)

(setq projectile-cache-file "/tmp/projectile-cache")
(projectile-global-mode t)
(diminish 'projectile-mode)

(global-set-key (kbd "s-p") 'projectile-switch-project)

(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
(global-set-key (kbd "s-d") 'projectile-find-dir)
(global-set-key (kbd "s-p") 'projectile-switch-project)
