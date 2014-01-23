(require-package 'company)

(add-hook 'c-mode-common-hook
          (lambda ()
            (company-mode)
            (make-local-variable 'standard-indent)
            (setq standard-indent 4)))
