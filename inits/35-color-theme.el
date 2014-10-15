;; Please set your themes directory to 'custom-theme-load-path
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (concat user-emacs-directory "colorthemes")))

;; load your favorite theme
(load-theme 'clarity t t)
(enable-theme 'clarity)
