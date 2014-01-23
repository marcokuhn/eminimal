(require-package 'dart-mode)

(autoload 'dart-mode "dart-mode" "Dart Mode." t)
(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))
