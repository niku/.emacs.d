(setq inhibit-startup-screen t)         ; startupの画面を消す
(setq initial-scratch-message nil)      ; *scratch*のメッセージを消す
(menu-bar-mode 0)                       ; メニューバーを消す
(tool-bar-mode 0)                       ; ツールバーを消す
(set-scroll-bar-mode nil)               ; スクロールバーを消す
(setq visible-bell t)                   ; ビープ音を消す
(blink-cursor-mode 0)                   ; カーソルを点滅させない
(global-hl-line-mode 1)                 ; 現在行に色をつける
(transient-mark-mode t)                 ; リージョンをハイライト表示する
(setq kill-whole-line t)                ; C-kで改行までまとめて行をカットする
(delete-selection-mode 1)               ; BSで選択範囲を消す
(global-font-lock-mode t)               ; フォントロックモード (強調表示等) を有効にする
(global-auto-revert-mode t)             ; ファイルが変更されていたらバッファを再読み込みする
(setq-default indent-tabs-mode nil)     ; 字下げにタブを使用しない
(defalias 'yes-or-no-p 'y-or-n-p)       ; yes/noではなくy/nとする

(setq backup-inhibited t)    ; 保存時にバックアップファイルを作らない
(setq make-backup-files nil) ; *.~ とかのバックアップファイルを作らない
(setq auto-save-default nil) ; .#* とかのバックアップファイルを作らない
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; 保存時に行末の空白を削除する
(setq require-final-newline t)                           ; 最終行に必ず 1 行追加する
(setq next-line-add-newlines nil)                        ; バッファの最後でnewlineで新規行を追加するのを禁止する

(define-key global-map (kbd "C-h") 'delete-backward-char) ; C-hで一文字前を消す
(define-key global-map (kbd "C-m") 'newline-and-indent)   ; C-mで改行する

;;; モードラインに時刻を表示する
(setq display-time-string-forms
      '((format "%s/%s(%s)%s:%s"
                month day dayname
                24-hours minutes
                )))
(display-time-mode t)

;;; emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
