(require-package 'cycbuf)

(global-set-key (kbd "s-n") 'cycbuf-switch-to-next-buffer)
(global-set-key (kbd "s-p") 'cycbuf-switch-to-previous-buffer)

(setq cycbuf-clear-delay 0.1)
