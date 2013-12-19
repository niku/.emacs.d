;;; use ag instead of grep
(require 'grep)
(grep-apply-setting 'grep-command "agg ")
(grep-apply-setting 'grep-find-command "agg ")
(grep-apply-setting 'grep-find-template "agg <R>")
(grep-apply-setting 'grep-template "agg <X> <R> <F>")
(setq grep-use-null-device nil)
