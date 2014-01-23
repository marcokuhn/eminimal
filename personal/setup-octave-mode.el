(autoload 'octave-mode "octave-mode" nil t)

(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
          (lambda()
            (require 'ac-octave)
            (setq ac-sources '(ac-source-octave))))

