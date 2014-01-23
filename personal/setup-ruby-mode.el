(require-package 'company)
(require-package 'company-inf-ruby)
(require-package 'robe)

(add-hook 'ruby-mode-hook
          (lambda ()
            (push 'company-robe company-backends)
            (company-mode)
            (modify-syntax-entry ?_ "w" ruby-mode-syntax-table)
            (setq ruby-deep-indent-paren nil)
            (setq ruby-compilation-error-regexp "^\\([^: ]+\.rb\\):\\([0-9]+\\):")))

(add-hook 'ruby-mode-hook 'robe-mode)
