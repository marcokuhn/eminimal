(require-package 'evil)
(require 'evil-mode-line)

(evil-mode 1)

(put 'dired-find-alternate-file 'disabled nil)

(define-key evil-insert-state-map "k" #'cofi/maybe-exit)
(define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up)


(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "k")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

