;;; set load-path
(setq load-path (cons "~/.emacs.d/" load-path))
(setq load-path (cons "~/.emacs.d/elisp" load-path))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load)

;;; set env
(cond ((file-directory-p "~/.emacs.env")
       (setq load-path (cons "~/.emacs.env/" load-path))
       (load "env-open-junk-file")
       ))
(put 'narrow-to-region 'disabled nil)
