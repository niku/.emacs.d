(add-hook 'projectile-mode-hook 'projectile-rails-on)

(defun my-projectile-rails-mode-hook ()
  (define-key projectile-rails-mode-map (kbd "C-1") 'projectile-rails-find-current-model)
  (define-key projectile-rails-mode-map (kbd "C-2") 'projectile-rails-find-current-controller)
  (define-key projectile-rails-mode-map (kbd "C-3") 'projectile-rails-find-current-view)
  (define-key projectile-rails-mode-map (kbd "C-9") 'projectile-rails-find-current-spec)
  )
(add-hook 'projectile-rails-mode-hook 'my-projectile-rails-mode-hook)
