(require-package 'auto-complete)

(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (expand-file-name "~/.emacs.d/ac-dict"))

(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-quick-help-delay 0.5)

(setq ac-modes '(scala-mode haskell-mode))

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
