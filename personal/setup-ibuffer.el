(require 'ibuffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(define-key ibuffer-mode-map (kbd "j") 'evil-next-line)
(define-key ibuffer-mode-map (kbd "k") 'evil-previous-line)
