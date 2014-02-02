(require-package 'ghc)

(defun console-hoogle ()
  (interactive)
  (let* ((query (word-at-point))
         (buffer (get-buffer-create query)))
    (save-excursion
      (switch-to-buffer buffer)
      (erase-buffer))
    (switch-to-buffer (current-buffer))
    (call-process "hoogle" nil buffer t "--info" query)
    (display-message-or-buffer buffer)))

(add-hook 'haskell-mode-hook
          (lambda ()
            (require 'inf-haskell)
            (require 'haskell-indentation)
            (ghc-init)
            (define-key haskell-mode-map (kbd "M-RET") nil)
            (define-key haskell-mode-map (kbd "C-c C-h") 'console-hoogle)
            (turn-on-haskell-indentation)))

(autoload 'ghc-init "ghc" nil t)
(autoload 'haskell-mode "haskell-mode" "Haskell Mode." t)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'exec-path "~/Library/Haskell/bin")

(setq haskell-program-name "ghci")
