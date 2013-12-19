(setq load-path (cons "~/.emacs.d/elisp/navi2ch" load-path)) ; for navi2ch
(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)
(setq navi2ch-bookmark-fetch-mark-article-check-update t)
