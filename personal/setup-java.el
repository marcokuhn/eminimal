(unless (package-installed-p 'emacs-eclim)
  (package-install 'emacs-eclim))

(require 'eclim)
(require 'eclimd)

(add-hook 'java-mode-hook
          (lambda ()
            (company-mode)
            (eclim-mode))) 
