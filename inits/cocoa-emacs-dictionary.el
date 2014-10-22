;; https://github.com/elim/dotemacs/blob/master/config/builtins/dictionary.el
(defun dictionary-search (word)
  (browse-url
   (concat "dict:///" (url-hexify-string word))))

(defun dictionary-word ()
  (interactive)
  (dictionary-search
   (substring-no-properties (thing-at-point 'word))))

(defun dictionary-region (beg end)
  (interactive "r")
  (dictionary-search
   (buffer-substring-no-properties beg end)))

(global-set-key (kbd "s-d") 'dictionary-word)
