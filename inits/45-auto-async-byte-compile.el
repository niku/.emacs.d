;; (auto-install-from-emacswiki "auto-async-byte-compile.el")
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/projects/|/.emacs.d/inits/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
