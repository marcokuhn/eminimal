(require-package 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq js2-rebind-eol-bol-keys nil)
(setq js2-skip-preprocessor-directives t)

(add-hook 'js2-mode-hook (lambda() (company-mode)))
