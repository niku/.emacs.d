(require 'recentf)
(setq recentf-max-saved-items nil) ; A nil value means to save the whole list.
(setq recentf-exclude '(".recentf" "/TAGS$" "/var/tmp/"))
(setq recentf-auto-cleanup 10)
(run-with-idle-timer 30 t 'recentf-save-list)
(recentf-mode 1)
