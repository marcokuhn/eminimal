(require-package 'rhtml-mode)

(autoload 'rhtml-mode "rhtml-mode" "RHTML Mode" t)
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.html.erb$" . rhtml-mode))

(add-hook 'rhtml-mode-hook
          (lambda()
            (abbrev-mode nil)))
