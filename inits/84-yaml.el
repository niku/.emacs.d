;; (auto-install-from-url "https://github.com/yoshiki/yaml-mode/raw/master/yaml-mode.el")
(require 'yaml-mode)
;拡張子がyaml，ymlなファイルをyaml-modeでロード
(setq auto-mode-alist (append '(("\\.yaml$" . yaml-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.yml$" . yaml-mode)) auto-mode-alist))
