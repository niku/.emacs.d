;; (auto-install-from-url "https://github.com/tdiary/tdiary-contrib/raw/master/util/tdiary-mode/http.el")
;; (auto-install-from-url "https://github.com/tdiary/tdiary-contrib/raw/master/util/tdiary-mode/tdiary-mode.el")
;;; tdiary
;(setq load-path
;      (append
;       (list (expand-file-name "~/.emacs.d/tdiary/")) load-path))
(setq tdiary-diary-list '(("NIKU daily log" "http://niku.name/")))
(setq tdiary-text-directory (expand-file-name "/tmp/td/"))
(setq tdiary-browser-function 'browse-url)
(autoload 'tdiary-mode "tdiary-mode" nil t)
(autoload 'tdiary-new "tdiary-mode" nil t)
(autoload 'tdiary-new-diary "tdiary-mode" nil t)
(autoload 'tdiary-replace "tdiary-mode" nil t)
(add-to-list 'auto-mode-alist
            '("\\.td$" . tdiary-mode))
;; save username and password
(setq tdiary-passwd-file (expand-file-name "~/.emacs.d/tdiary-pass"))
