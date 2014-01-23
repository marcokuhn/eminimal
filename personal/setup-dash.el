(require-package 'dash-at-point)

(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(global-set-key (kbd "C-c d") 'dash-at-point)

(add-to-list 'dash-at-point-mode-alist '(ruby-mode . "ruby"))
(add-to-list 'dash-at-point-mode-alist '(c-mode . "c"))
(add-to-list 'dash-at-point-mode-alist '(emacs-lisp-mode . "elisp"))
(add-to-list 'dash-at-point-mode-alist '(haskell-mode . "haskell"))
(add-to-list 'dash-at-point-mode-alist '(scala-mode . "scala"))
(add-to-list 'dash-at-point-mode-alist '(java-mode . "java"))
(add-to-list 'dash-at-point-mode-alist '(js2-mode . "javascript"))
(add-to-list 'dash-at-point-mode-alist '(go-mode . "go"))
(add-to-list 'dash-at-point-mode-alist '(html-mode . "html"))
(add-to-list 'dash-at-point-mode-alist '(shell-mode . "bash"))
(add-to-list 'dash-at-point-mode-alist '(scss-mode . "sass"))
(add-to-list 'dash-at-point-mode-alist '(csharp-mode . "unity3d"))
