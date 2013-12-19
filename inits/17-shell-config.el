;;; (browse-url "http://sakito.jp/emacs/emacsshell.html#id6")
(setq shell-file-name
      (or (executable-find "zsh")
          (executable-find "bash")
          (executable-find "cmdproxy")
          (error "can't find 'shell' command in PATH!!")))
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)
