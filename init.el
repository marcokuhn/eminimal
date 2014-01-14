(require 'package)

(add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(mapc
  (lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
  '(flycheck 
    evil 
    projectile 
    helm 
    helm-projectile 
    helm-git-grep 
    diminish 
    go-mode 
    company))

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(menu-bar-mode -1)

;; make the fringe (gutter) smaller
;; the argument is a width in pixels (the default is 8)
(if (fboundp 'fringe-mode)
    (fringe-mode 4))

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" invocation-name " Prelude - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 8)            ;; but maintain correct appearance

;; delete the selection with a keypress
(delete-selection-mode t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)

(savehist-mode +1)

;; save recent files
(require 'recentf)
(setq recentf-save-file "/tmp/recentf"
      recentf-max-saved-items 500
      recentf-max-menu-items 15)
(recentf-mode +1)

(require 'go-mode-load)

;; projectile is a project management mode
(require 'projectile)
(setq projectile-cache-file "/tmp/projectile-cache")
(projectile-global-mode t)
(diminish 'projectile-mode "Prjl")

(require 'helm)
(require 'helm-git-grep)
(require 'helm-projectile)
(require 'cl)

(global-set-key (kbd "M-SPC") 'helm-mini) 
(global-set-key (kbd "M-RET") 'helm-projectile)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c g") 'helm-git-grep) 

(require 'company)
(global-company-mode)

(require 'flycheck)
(global-flycheck-mode)

(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)
(define-key evil-insert-state-map "k" #'cofi/maybe-exit)

(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "k")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.1)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

(server-start)
