(require-package 'company)

(setq-default c-basic-offset 4)

(add-hook 'c-mode-common-hook
          (lambda ()
            (company-mode)
            (modify-syntax-entry ?_ "w" c-mode-syntax-table)
            (make-local-variable 'standard-indent)
            (setq standard-indent 4)))
