(require 'ctags)
(setq ctags-command "ctags-exuberant -e -R ")
(setq tags-revert-without-query t)
(global-set-key (kbd "<f7>") 'ctags-create-or-update-tags-table)
