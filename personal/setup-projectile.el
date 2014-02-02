(require-package 'projectile)
(require-package 'diminish)

(setq projectile-cache-file "/tmp/projectile-cache")
(projectile-global-mode t)
(diminish 'projectile-mode)
