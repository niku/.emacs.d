; (org-remember-insinuate)

;; 画像をインライン表示する
(setq org-startup-with-inline-images t)

;; メモを格納するorgファイルの設定
(setq org-directory "~/org")
(setq org-default-notes-file (expand-file-name "memo.org" org-directory))
;; テンプレートの設定
(setq org-remember-templates
      '(("Note" ?n "** %?\n   %i\n   %a\n   %t" nil "Inbox")
        ("Todo" ?t "** TODO %?\n   %i\n   %a\n   %t" nil "Inbox")))
;; TODOの設定
(setq org-use-fast-todo-selection t)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "|" "DONE(x)" "CANCEL(c)")
        (sequence "APPT(a)" "|" "DONE(x)" "CANCEL(c)")))

;; org-agenda
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-ndays nil
      org-agenda-span 'month)
