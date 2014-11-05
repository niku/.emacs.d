(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "C-o") 'helm-imenu)
(global-set-key (kbd "M-%") 'helm-regexp)
(global-set-key (kbd "<help> a") 'helm-apropos)

(eval-after-load "helm"
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)))

(eval-after-load "helm-files"
  '(progn
     (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)))
