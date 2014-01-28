(require-package 'go-mode)
(require-package 'company)
(require-package 'company-go)

(require 'go-mode-load)

(setenv "GOPATH" (getenv "HOME"))

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'write-contents-functions 'gofmt)
            (define-key go-mode-map (kbd "C-C C-i") 'go-remove-unused-imports)
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)))
