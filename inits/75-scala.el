; (browse-url "https://gist.github.com/tototoshi/653993")
(require 'scala-mode2)
(defun scala-mode-hooks-imenu ()
  (setq imenu-generic-expression
        '(
          ("var" "\\(var +\\)\\([^(): ]+\\)" 2)
          ("val" "\\(val +\\)\\([^(): ]+\\)" 2)
          ("override def" "^[ \\t]*\\(override\\) +\\(def +\\)\\([^(): ]+\\)" 3)
          ("implicit def" "^[ \\t]*\\(implicit\\) +\\(def +\\)\\([^(): ]+\\)" 3)
          ("def" "^[ \\t]*\\(def +\\)\\([^(): ]+\\)" 2)
          ("trait" "\\(trait +\\)\\([^(): ]+\\)" 2)
          ("class" "^[ \\t]*\\(class +\\)\\([^(): ]+\\)" 2)
          ("case class" "^[ \\t]*\\(case class +\\)\\([^(): ]+\\)" 2)
          ("object" "\\(object +\\)\\([^(): ]+\\)" 2)
          )))
(add-hook 'scala-mode-hook 'scala-mode-hooks-imenu)
