;;; (auto-install-from-emacswiki "key-chord.el")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "jk" 'open-junk-file)
(key-chord-define-global "l;" 'org-remember)
