;;; ruby-block
;; (package-install 'ruby-block)
(require 'ruby-block)
(defun ruby-mode-hooks-ruby-block-mode ()
  (setq ruby-block-highlight-toggle t)
  (ruby-block-mode t))

(add-hook 'ruby-mode-hook 'ruby-mode-hooks-ruby-block-mode)
