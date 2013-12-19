;; (auto-install-batch "text translator")
(require 'text-translator)
(setq text-translator-auto-selection-func
      'text-translator-translate-by-auto-selection-enja)
(global-set-key (kbd "C-c M-t") 'text-translator-all-by-auto-selection)
