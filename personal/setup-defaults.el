(blink-cursor-mode -1)
(setq inhibit-startup-screen t)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode -1)
(menu-bar-mode t)

(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))

(if (fboundp 'fringe-mode)
    (fringe-mode 8))

(setq ring-bell-function (lambda() ()))

(setq ns-pop-up-frames nil)

(fset 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)

(delete-selection-mode t)

(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(global-auto-revert-mode t)

(setq tab-always-indent 'complete)

(savehist-mode +1)

(set-frame-font "Menlo-14")

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c c") 'compile)

(global-set-key (kbd "<s-return>") 'toggle-frame-fullscreen)
(global-set-key (kbd "s-=") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)

(add-to-list 'exec-path "~/bin")
(add-to-list 'exec-path "/usr/local/bin")
