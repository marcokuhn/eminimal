(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/personal/")

(load "setup-defaults")
(load "setup-package")
(load "setup-theme")

(load "setup-auto-complete")
(load "setup-c-mode")
(load "setup-company")
(load "setup-dart-mode")
(load "setup-dash")
(load "setup-dired")
(load "setup-elscreen")
(load "setup-emacs-lisp-mode")
(load "setup-ensime")
(load "setup-evil")
(load "setup-flycheck-mode")
(load "setup-go")
(load "setup-haml-mode")
(load "setup-haskell-mode")
(load "setup-helm")
(load "setup-ibuffer")
(load "setup-java")
(load "setup-js2-mode")
(load "setup-markdown-mode")
(load "setup-octave-mode")
(load "setup-omnisharp")
(load "setup-projectile")
(load "setup-recentf")
(load "setup-rhtml-mode")
(load "setup-ruby-mode")
(load "setup-smooth-scroll")
(load "setup-yaml-mode")

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
