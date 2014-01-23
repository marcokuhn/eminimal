(require-package 'yaml-mode)

(autoload 'yaml-mode "yaml-mode" "YAML Mode." t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
