; (package-install 'popwin)
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(push '("\\*helm.*\\*" :regexp t :height 0.6) popwin:special-display-config)
