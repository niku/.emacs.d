(defun quickrun-open-standard-input-buffer ()
  "open standard-input (stdin) file for quickrun"
  (interactive)
  (let* ((filename (buffer-file-name))
         (input-filename (concat filename ".qrinput")))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file" filename)
      (if (get-buffer input-filename)
          (switch-to-buffer input-filename)
        (find-file input-filename)))))

(push '("*quickrun*") popwin:special-display-config)
(global-set-key (kbd "C-c q r") 'quickrun)
(global-set-key (kbd "C-c q i") 'quickrun-open-standard-input-buffer)
