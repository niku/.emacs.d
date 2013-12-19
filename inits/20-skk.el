(setq load-path (cons "~/.emacs.d/elisp/skk/lisp" load-path))

(require 'skk-autoloads)
;;; skk-mode
(global-set-key (kbd "C-\\") 'skk-mode)

;;isearch-mode に入った際に自動的に skk-isearch を起動
(add-hook 'isearch-mode-hook 'skk-isearch-mode-setup)
(add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup)

;; skkサーバ設定
(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)
(setq skk-share-private-jisyo t)

(setq skk-kutouten-type 'en) ;句読点を「．」「，」にする
