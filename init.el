;;; set load-path
(setq load-path (cons "~/.emacs.d/" load-path))
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;; use cask
(require 'cask)
(cask-initialize)

;;; use init-loader
(require 'init-loader)
;; (setq init-loader-show-log-after-init nil)
(init-loader-load)

;; set env
(cond ((file-directory-p "~/.emacs.env")
       (setq load-path (cons "~/.emacs.env/" load-path))
       (load "env-open-junk-file")
       ))

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
