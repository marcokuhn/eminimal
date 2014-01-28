(require 'company)

(setq company-idle-delay 0)

;; (define-key company-mode-map (kbd "TAB") 'complete-or-indent)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
