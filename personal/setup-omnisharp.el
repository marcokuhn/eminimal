(require-package 'omnisharp)
(require-package 'flymake)
(require-package 'flymake-cursor)

(add-hook 'csharp-mode-hook 'omnisharp-mode)

(add-hook 'csharp-mode-hook
          (lambda ()
            (flymake-mode 1)
            (setq standard-indent 4)
            (add-to-list 'company-backends 'company-omnisharp)))

