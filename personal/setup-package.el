(require 'package)

(add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defun require-package (package)
  (unless (package-installed-p package)
    (package-install package))
  (require package))
