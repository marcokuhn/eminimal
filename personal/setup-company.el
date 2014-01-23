(require 'company)

(define-key company-mode-map (kbd "TAB") 'company-complete-common)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
