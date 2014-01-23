(require-package 'haml-mode)

(autoload 'haml-mode "haml-mode" "HAML Mode" t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
