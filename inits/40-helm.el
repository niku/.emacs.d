; (package-install 'helm)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "C-o") 'helm-imenu)
(global-set-key (kbd "M-%") 'helm-regexp)
(global-set-key (kbd "<help> a") 'helm-apropos)

;; (auto-install-batch "helm")
;; (require 'helm-startup)
;; (global-set-key (kbd "C-;") 'helm-filelist+)
;; (global-set-key (kbd "C-o") 'helm-imenu)
;; ; (browse-url "http://repo.or.cz/w/helm-config.git/blob_plain/HEAD:/contrib/make-filelist.rb")
;; (setq helm-c-filelist-file-name "~/tmp/all.filelist")

;; ;; 過去の kill-ring の内容を取り出す
;; (global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; ;; (auto-install-from-emacswiki "color-moccur.el")
;; ;; (auto-install-from-emacswiki "moccur-edit.el")
;; (require 'moccur-edit)
;; (setq moccur-split-word t)
;; ;; (auto-install-from-url "http://svn.coderepos.org/share/lang/elisp/helm-c-moccur/trunk/helm-c-moccur.el")
;; (require 'helm-c-moccur)
;; (global-set-key (kbd "M-o") 'helm-c-moccur-occur-by-moccur)
;; (global-set-key (kbd "C-M-o") 'helm-c-moccur-dmoccur)
;; (add-hook 'dired-mode-hook
;;           '(lambda ()
;;              (local-set-key (kbd "O") 'helm-c-moccur-dired-do-moccur-by-moccur)))

;; ;; (require 'helm-rurima)
;; ;; (setq helm-rurima-index-file "~/projects/rurima/rubydoc/rurima.e")

;; (eval-after-load "helm"
;;   '(define-key helm-map (kbd "C-h") 'delete-backward-char))


;; ;: (auto-install-from-url "https://raw.github.com/gist/1982683/helm-git-project.el")
