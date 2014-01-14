;;; from るびきち mag2 0001373131
(require 'ace-jump-mode)
(defun ace-jump-from-isearch ()
  "Invoke `ace-jump' from isearch."
  (interactive)
  (isearch-exit)
  (goto-char isearch-opoint)
  (if ace-jump-current-mode (ace-jump-done))
  (setq ace-jump-current-mode 'ace-jump-char-mode)
  (ace-jump-do isearch-string))
(define-key isearch-mode-map (kbd "C-M-s") 'ace-jump-from-isearch)

(defvar isearch-ace-jump-mode-timer nil)
(defvar isearch-ace-jump-mode-interval 0.2)

(defun isearch-mode-hook--ace-jump-mode ()
  (when (and (not isearch-ace-jump-mode-timer)
             (not isearch-regexp)
             isearch-ace-jump-mode-interval)
    (run-at-time 3 nil 'set 'ring-bell-function ring-bell-function)
    (setq ring-bell-function 'ignore)
    (setq isearch-ace-jump-mode-timer
          (run-with-idle-timer isearch-ace-jump-mode-interval t
                               'search-ace-jump-timer-function))))
(add-hook 'isearch-mode-hook 'isearch-mode-hook--ace-jump-mode)
(defun isearch-ace-jump-timer-function ()
  (when (memq (length isearch-string) '(1 2))
    (isearch-ace-jump-cancel-timer)
    (setq quit-flag t)
    (run-with-idle-timer 0 nil 'message "")
    (ace-jump-from-isearch)))
(defun isearch-ace-jump-cancel-timer ()
  (when isearch-ace-jump-mode-timer
    (cancel-timer isearch-ace-jump-mode-timer)
    (setq isearch-ace-jump-mode-timer nil)))
(add-hook 'isearch-mode-end-hook 'isearch-ace-jump-cancel-timer)
