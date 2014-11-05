(recentf-mode 1)
(setq recentf-max-saved-items nil) ; save the whole list.
(setq recentf-exclude '(".recentf" "/TAGS$" "/var/tmp/"))
(setq recentf-auto-cleanup 10)
(run-with-idle-timer 30 t 'recentf-save-list)
