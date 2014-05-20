;; (package-install 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; (auto-install-from-emacswiki "el-expectations.el")
;; (auto-install-from-url "http://perso.tls.cena.fr/boubaker/distrib/mode-compile.el")
;; (auto-install-from-url "https://raw.github.com/pezra/rspec-mode/master/rspec-mode.el")

;; (defun ruby-mode-hooks-builtin-modes ()
;;   (progn
;;     (electric-pair-mode t)
;;     (electric-indent-mode t)
;;     (electric-layout-mode t)))
;; (add-hook 'ruby-mode-hook 'ruby-mode-hooks-builtin-modes)

;; rspec-mode
(require 'rspec-mode)
(setq rspec-use-rvm t)
(defun ruby-mode-hooks-rspec-mode ()
  (define-key ruby-mode-map (kbd "C-9") 'rspec-toggle-spec-and-target)
  )
(add-hook 'ruby-mode-hook 'ruby-mode-hooks-rspec-mode)
;; (browse-url "http://yasnippet.googlecode.com/svn/trunk/doc/snippet-expansion.html")
;; yasnippet settings for rspec-(minor)mode
(add-hook 'rspec-mode-hook
          #'(lambda ()
              (setq yas/mode-symbol 'rspec-mode)))

;; (auto-install-from-buffer "~/.rvm/gems/ruby-1.9.2-p136/gems/rcodetools-0.8.5.0/rcodetools.el")
(require 'rcodetools)

;; (auto-install-from-url "https://gist.github.com/raw/2875bd46c958ac4c74b2/61d1d41fc587215d3a12499f27657e301319d447/myrurema.el")
(require 'myrurema)
(defun ruby-mode-hooks-myrurema ()
  (define-key ruby-mode-map (kbd "<C-f1>") 'rurema)
  ;(define-key ruby-mode-map [f1] 'rurema:at-point)
  )
(add-hook 'ruby-mode-hook 'ruby-mode-hooks-myrurema)

;; Setting rbenv path
;; (browse-url "http://marc-bowes.com/2012/03/10/rbenv-with-emacs.html")
(let ((rbenv-shims-path (concat (getenv "HOME") "/.rbenv/shims"))
      (rbenv-bin-path (concat (getenv "HOME") "/.rbenv/bin")))
  (progn
    (setenv "PATH" (mapconcat 'identity (list rbenv-shims-path rbenv-bin-path (getenv "PATH")) ":"))
    (setq exec-path (append (list rbenv-shims-path rbenv-bin-path) exec-path))))
