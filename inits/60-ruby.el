;; (package-install 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; do not insert magic comment
(setq ruby-insert-encoding-magic-comment nil)

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
