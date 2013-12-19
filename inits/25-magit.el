;; (package-install 'magit)
(delete 'Git vc-handled-backends)
(global-set-key (kbd "C-M-l") 'magit-status)
