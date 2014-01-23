(require-package 'ensime)

(setq ensime-ac-enable-argument-placeholders nil)
(setq ensime-ac-override-settings nil)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(global-set-key (kbd "<M-S-return>") 'ensime-import-type-at-point)
