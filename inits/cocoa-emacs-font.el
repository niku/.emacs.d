;;; Macフォント設定
;; 英語
(set-face-attribute 'default nil
                    :family "Ricty")
;; 日本語
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Hiragino Kaku Gothic ProN"))
