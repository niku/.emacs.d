(require 'rinari)

(defun my-rinari-minor-mode-hooks ()
  (define-key rinari-minor-mode-map (kbd "C-1") 'rinari-find-model)
  (define-key rinari-minor-mode-map (kbd "C-2") 'rinari-find-controller)
  (define-key rinari-minor-mode-map (kbd "C-3") 'rinari-find-view)
  )
(add-hook 'rinari-minor-mode-hook 'my-rinari-minor-mode-hooks)
