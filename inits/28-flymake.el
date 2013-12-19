;; (custom-set-faces
;;  '(flymake-errline ((t (:background "red3"))))
;;  '(flymake-warnline ((t (:background "orange3"))))
;;  )
(global-set-key (kbd "M-p") 'flymake-goto-prev-error)
(global-set-key (kbd "M-n") 'flymake-goto-next-error)
