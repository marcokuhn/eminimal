(require-package 'omnisharp)

(add-hook 'csharp-mode-hook 'omnisharp-mode)

(add-hook 'csharp-mode-hook
          (lambda ()
            (add-to-list 'company-backends 'company-omnisharp)))

