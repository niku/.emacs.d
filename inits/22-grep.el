;;; use ag instead of grep
(require 'grep)
(grep-apply-setting 'grep-command "agg ")
(grep-apply-setting 'grep-find-command "agg ")
(grep-apply-setting 'grep-find-template "agg <R>")
(grep-apply-setting 'grep-template "agg <X> <R> <F>")
(setq grep-use-null-device nil)

;; この grep の方法はよくないと思うので変えたいなあ．
;; 「grep コマンドの最後に default-directory を付け足す」という方法がわかればいいんだけど．
(defun grep-default-directory (pattern)
  (interactive "sPattern: ")
  (grep (format "agg %s %s" pattern default-directory)))
(global-set-key (kbd "M-g M-d") 'grep-default-directory)
