(require-package 'go-mode)
(require-package 'company)
(require-package 'company-go)

(require 'go-mode-load)

(setenv "GOPATH" (getenv "HOME"))
(setq goroot (substring (shell-command-to-string "go env GOROOT") 0 -1))
(setenv "PATH" (concat goroot "/bin" ":" (getenv "PATH")))

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'write-contents-functions 'gofmt)
            (define-key go-mode-map (kbd "C-C C-i") 'go-remove-unused-imports)
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)))
