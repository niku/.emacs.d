(require 'cl)

(defvar installing-package-list
  '(
    ace-jump-mode
    all-ext
    ansi
    auto-async-byte-compile
    auto-complete
    auto-install
    calfw
    calfw-gcal
    coffee-mode
    color-moccur
    color-theme
    color-theme-solarized
    commander
    ctags
    ctags-update
    dash
    dash-functional
    dropdown-list
    e2wm
    el-mock
    elixir-mode
    ert
    ert-expectations
    ert-runner
    ert-x
    exec-path-from-shell
    f
    findr
    flymake
    flymake-cursor
    flymake-easy
    flymake-jshint
    flymake-ruby
    furl
    gh
    git-commit-mode
    git-rebase-mode
    go-mode
    google-c-style
    graphviz-dot-mode
    grep-o-matic
    haskell-mode
    helm
    helm-c-moccur
    helm-c-yasnippet
    helm-descbinds
    helm-git
    helm-ls-git
    helm-migemo
    helm-themes
    inf-ruby
    inflections
    init-loader
    jump
    key-chord
    logito
    magit
    markdown-mode
    marmalade
    migemo
    mode-compile
    motion-mode
    open-junk-file
    org
    packed
    paredit
    pcache
    php-mode
    popup
    popwin
    recentf-ext
    repository-root
    request
    rinari
    rspec-mode
    ruby-block
    ruby-compilation
    ruby-electric
    ruby-end
    ruby-mode
    s
    scala-mode
    scala-mode2
    scss-mode
    solarized-theme
    twittering-mode
    w3m
    window-layout
    yagist
    yaml-mode
    yasnippet
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
