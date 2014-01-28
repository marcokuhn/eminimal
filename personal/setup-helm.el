(require-package 'helm)
(require-package 'helm-projectile)
(require-package 'helm-ls-git)
(require-package 'helm-swoop)
(require-package 'helm-git-grep)

(require 'helm-config)

(helm-mode)

(defvar helm-source-projectile-dirs-list
  `((name . "Projectile Dirs")
    (init . (lambda ()
              (helm-projectile-init-buffer-with-files (projectile-project-root)
                                                      (projectile-current-project-dirs))))
    (coerce . helm-projectile-coerce-file)
    (candidates-in-buffer)
    (keymap . ,helm-generic-files-map)
    (help-message . helm-find-file-help-message)
    (mode-line . helm-ff-mode-line-string)
    (type . file)
    (action . (lambda (file) (find-file file))))
  "Helm source definition.")

(defun helm-projectile-files ()
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm :sources '(helm-source-projectile-files-list)
          :buffer "*projectile files*"
          :prompt (projectile-prepend-project-name "file: "))))

(defun helm-projectile-dirs ()
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm :sources '(helm-source-projectile-dirs-list)
          :buffer "*projectile dirs*"
          :prompt (projectile-prepend-project-name "dir: "))))

(defun helm-projectile-buffers ()
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm :sources '(helm-source-projectile-buffers-list)
          :buffer "*projectile buffers*"
          :prompt (projectile-prepend-project-name "buffer: "))))

(defun helm-projectile-recentf ()
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm :sources '(helm-source-projectile-recentf-list)
          :buffer "*projectile recent files*"
          :prompt (projectile-prepend-project-name "recentf: "))))

(setq helm-m-occur-idle-delay 0.1)

(define-key helm-map (kbd "SPC") 'helm-exit-minibuffer)
(global-set-key (kbd "C-c C-k") 'helm-show-kill-ring)

(global-set-key (kbd "C-SPC") 'helm-mini)
(global-set-key (kbd "M-RET") 'helm-mini)

(global-set-key (kbd "s-d") 'helm-projectile-dirs)
(global-set-key (kbd "s-f") 'helm-projectile-files)
(global-set-key (kbd "s-g") 'helm-git-grep)
(global-set-key (kbd "s-r") 'helm-projectile-recentf)
(global-set-key (kbd "s-b") 'helm-projectile-buffers)
(global-set-key (kbd "s-o") 'helm-occur)
(global-set-key (kbd "s-8") 'helm-swoop)
(global-set-key (kbd "s-i") 'helm-imenu)




