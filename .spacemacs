;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (
      auto-completion
       :variables
                       auto-completion-return-key-behavior 'complete
                       auto-completion-tab-key-behavior 'complete
                       auto-completion-complete-with-key-sequence "fj"
                       auto-completion-complete-with-key-sequence-delay 2.0
                       auto-completion-idle-delay nil
                       auto-completion-private-snippets-directory nil
                       auto-completion-enable-snippets-in-popup nil
                       auto-completion-enable-help-tooltip nil
                       auto-completion-use-company-box nil
                       auto-completion-enable-sort-by-usage t)
     ;; latex
     xclipboard
     (chinese :variables
              chinese-enable-avy-pinyin nil)
     emacs-lisp
     evil-better-jumper
     git
     (helm :variables
           helm-use-fuzzy 'source)
     (lsp :variables
          lsp-navigation 'both
          lsp-modeline-diagnostics-enable t
          lsp-ui-sideline-show-hover t
          lsp-ui-sidine-symbol t
          lsp-enable-imenu t
          lsp-ui-flycheck-enable t
          lsp-lens-enable nil
          lsp-ui-sideline-enable nil
          lsp-ui-doc-enable nil
          lsp-ui-doc-display nil
          lsp-headerline-breadcrumb-enable t
          lsp-headerline-breadcrumb-icons-enable nil
          lsp-log-max nil
          lsp-enable-on-type-formatting t
          lsp-enable-symbol-highlighting nil
          lsp-enable-indentation nil
          lsp-ui-flycheck-live-reporting nil
          lsp-before-save-edits t
          lsp-modeline-diagnostics-scope 'file
          lsp-file-watch-threshold 30000
          )
     ;; rust
     ;;markdown
     multiple-cursors
     ;;restructuredtext
     org
     ;;(shell :variables
     ;;       shell-default-height 30
     ;;       shell-default-position 'bottom
     ;;       shell-default-shell 'vterm
     ;;       close-window-with-terminal t
     ;;       shell-default-full-span t)
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'git-gutter+
                      version-control-global-margin t)
     (c-c++ :variables
            c-c++-adopt-subprojects t
            c-c++-backend 'lsp-clangd
            ;;c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-enable-clang-format-on-save t
            )
     )
   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(key-chord)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    Ace-Pinyin
                                    ace-pinyin
                                    Ace-Pinyin-Global
                                    rainbow-delimiters
                                    symon
                                    smeargle
                                    quickrun
                                    htmlize
                                    flx-ido
                                    find-by-pinyin-dired
                                    elisp-slime-nav
                                    editorconfig
                                    drag-stuff
                                    column-enforce-mode
                                    chinese-conv
                                    highlight-symbol
                                    eyebrowse
                                    fancy-battery
                                    coffee-mode
                                    browse-at-remote
                                    uuidgen
                                    company-rtags
                                    company-ycmd
                                    dumb-jump
                                    flycheck-rtags
                                    flycheck-ycmd
                                    helm-gtags
                                    helm-rtags
                                    helm-company
                                    helm-c-yasnippet
                                    avy
                                    rtags
                                    gtags
                                    ycmd
                                    auto-complete
                                    auto-yasnippet
                                    ac-ispell
                                    yasnippet
                                    yasnippet-snippets
                                    disaster
                                    gdb-mi
                                    google-c-style
                                    helm-cscope
                                    realgud
                                    xcscope
                                    dap-mode
                                    counsel-gtags
                                    ivy-rtags
                                    emacsql
                                    emacsql-sqlite
                                    forge
                                    ghub
                                    gnuplot
                                    iedit
                                    multi-line
                                    pyim
                                    ;;cpp-auto-include
                                    gendoxy
                                    aggressive-indent
                                    eval-sexp-fu
                                    hungry-delete
                                    link-hint
                                    lorem-ipsum
                                    password-generator
                                    smartparens
                                    string-inflection
                                    persistent-scratch
                                    unkillable-scratch
                                    string-edit
                                    dumb-jump
                                    define-word
                                    desktop
                                    zoom-frm
                                    google-translate
                                    evil-args
                                    evil-number
                                    evil-nerd-commenter
                                    evil-lion
                                    evil-indent-plus
                                    evil-tutor
                                    evil-easymotion
                                    evil-vimish-fold
                                    org-mime
                                    org-pomodoro
                                    org-present
                                    orgit
                                    org-projectile
                                    org-rich-yank
                                    vi-tilde-fringe
                                    Ido-Vertical
                                    writeroom-mode
                                    Powerline
                                    )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((bookmarks . 10)
                                (recents . 5)
                                (projects . 5))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-one)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   ;;dotspacemacs-default-font '("Source Code Pro"
   dotspacemacs-default-font '("FantasqueSansMono Nerd Font Mono"
                               :size 18.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'nil

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode nil

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
          ("org-cn"   . "http://elpa.zilongshanren.com/org/")
          ("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")))
  ;;(setq initial-frame-alist '((height . 50) (width . 90)))
  (add-to-list 'initial-frame-alist '(height . 50))
  (add-to-list 'initial-frame-alist '(width . 85))
  (add-to-list 'default-frame-alist '(height . 50))
  (add-to-list 'default-frame-alist '(width . 85))
)


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (global-hl-line-mode -1)
  ;;(setq indent-guide-recursive t)
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
  (defun er--expand-region-1-sadsock ()
    "Increase selected region by semantic units.
Basically it runs all the mark-functions in `er/try-expand-list'
and chooses the one that increases the size of the region while
moving point or mark as little as possible."
    (let* ((p1 (point))
           (p2 (if (use-region-p) (mark) (point)))
           (start (min p1 p2))
           (end (max p1 p2))
           (try-list er/try-expand-list)
           (best-start (point-min))
           (best-end (point-max))
           (set-mark-default-inactive nil))

      ;; add hook to clear history on buffer changes
      (unless er/history
        (add-hook 'after-change-functions 'er/clear-history t t))

      ;; remember the start and end points so we can contract later
      ;; unless we're already at maximum size
      (unless (and (= start best-start)
                   (= end best-end))
        (push (cons p1 p2) er/history))

      (when (and expand-region-skip-whitespace
                 (er--point-is-surrounded-by-white-space)
                 (= start end))
        (skip-chars-forward er--space-str)
        (setq start (point)))

      (while try-list
        (er--save-excursion
         (ignore-errors
           (funcall (car try-list))
           (when (and (region-active-p)
                      (er--this-expansion-is-better start end best-start best-end))
             (setq best-start (point))
             (setq best-end (mark))
             (when (and er--show-expansion-message (not (minibufferp)))
               (message "%S" (car try-list))))))
        (setq try-list (cdr try-list)))

      (setq deactivate-mark nil)
      ;; if smart cursor enabled, decide to put it at start or end of region:
      (if (and expand-region-smart-cursor
               (not (= start best-start)))
          (progn (goto-char best-end)
                 (set-mark best-start))
        (goto-char best-end)
        (set-mark best-start))

      (er--copy-region-to-register)

      (when (and (= best-start (point-min))
                 (= best-end (point-max))) ;; We didn't find anything new, so exit early
        'early-exit)))

  ;;  (defun something-fixed ()

  ;;    )
  (advice-add 'er--expand-region-1 :override #'er--expand-region-1-sadsock)

  ;;(setq baud-rate 2400)

  ;;(setq reftex-default-bibliography '("/Users/apple/MegaAsync/MEGA/MyScholarship/note/library.bib"))
  ;;(define-key evil-motion-state-map (kbd "c-s-o") 'evil-jump-forward)
  (setq  projectile-indexing-method 'alien
         projectile-generic-command "fd . -0 --type f --color=never"
         projectile-enable-caching t)
  ;;(setq-default evil-escape-key-sequence "jk")
  (setq-default evil-escape-delay 0.2)
  (spacemacs/set-leader-keys
    "pf"  'projectile-find-file
    "pF"  'projectile-find-file-dwim
    "ff"  'projectile-find-file-in-directory
    ;;"fF"  'projectile-find-file-in-directory
    )
  (setq load-path
        (cons (expand-file-name "~/Config/emacs/tablegen") load-path))
  (require 'tablegen-mode)
  (setq load-path
        (cons (expand-file-name "~/Config/emacs/tablegen") load-path))
  (require 'llvm-mode)


  (define-key evil-insert-state-map (kbd "S-<up>")
    (lambda ()
      (interactive)
      (evil-force-normal-state)
      (evil-visual-char)
      (previous-line)))

  (define-key evil-insert-state-map (kbd "S-<down>")
    (lambda ()
      (interactive)
      (evil-force-normal-state)
      (evil-visual-char)
      (next-line)))

  (define-key evil-insert-state-map (kbd "S-<left>")
    (lambda ()
      (interactive)
      (forward-char)
      (evil-force-normal-state)
      (evil-visual-char)
      (backward-char)))

  (define-key evil-insert-state-map (kbd "S-<right>")
    (lambda ()
      (interactive)
      (forward-char)
      (evil-force-normal-state)
      (evil-visual-char)
      (forward-char)))

                                        ;(define-key evil-normal-state-map (kbd "S-<up>")
                                        ;  (lambda ()
                                        ;    (interactive)
                                        ;    (evil-visual-char)
                                        ;  (previous-line)))
                                        ;
                                        ;(define-key evil-normal-state-map (kbd "S-<down>")
                                        ;  (lambda ()
                                        ;    (interactive)
                                        ;    (evil-visual-char)
                                        ;    (next-line)))
                                        ;
                                        ;(define-key evil-normal-state-map (kbd "S-<left>")
                                        ;  (lambda ()
                                        ;    (interactive)
                                        ;    (evil-visual-char)
                                        ;    (backward-char)))
                                        ;
                                        ;(define-key evil-normal-state-map (kbd "S-<right>")
                                        ;  (lambda ()
                                        ;    (interactive)
                                        ;    (evil-visual-char)
                                        ;    (forward-char)))

  (define-key evil-visual-state-map (kbd "S-<up>")
    #'previous-line)

  (define-key evil-visual-state-map (kbd "S-<down>")
    #'next-line)

  (define-key evil-visual-state-map (kbd "S-<left>")
    #'backward-char)

  (define-key evil-visual-state-map (kbd "S-<right>")
    #'forward-char)
  ;;(setq org-startup-truncated nil)
  (with-eval-after-load 'org
    (setq org-startup-numerated t)
    (setq org-startup-folded 'content)
    (setq org-image-actual-width nil)
    ;; here goes your Org config :
    ;;(with-eval-after-load 'org-superstar
    ;;(setq org-superstar-headline-bullets-list '("✸" "✸" "✸" "✸"))
    ;; Org Headline Bullet Style (From Level 0 to Level 20)
    ;; (setq org-superstar-headline-bullets-list '("⓪" "①" "②" "③"
    ;;                                 "④" "⑤" "⑥" "⑦"
    ;;                                 "⑧" "⑨" "⑩" "⑪"
    ;;                                 "⑫" "⑬" "⑭"
    ;;                                 "⑮" "⑯" "⑰"
    ;;                                 "⑱" "⑲" "⑳"))
    ;;(setq org-superstar-bullet-list '("*" "*" "*" "*"))
    (setq org-superstar-item-bullet-alist
          '((?* . ?•)
            (?+ . ?➤)
            (?- . ?•)))


    (setq display-line-numbers-width-start t)
    ;; This is usually the default, but keep in mind it must be nil
    (setq org-hide-leading-stars t)
    ;; This line is necessary.
    (setq org-superstar-headline-bullets-list '(?\s))
    ;; If you use Org Indent you also need to add this, otherwise the
    ;; above has no effect while Indent is enabled.
    (setq org-indent-mode-turns-on-hiding-stars nil)
    (setq org-superstar-remove-leading-stars t)
    (setq org-superstar-special-todo-items t)
                                        ; Enable custom bullets for TODO items
    ;;(setq org-superstar-todo-bullet-alist
    ;;      '(("TODO" . ?☐)
    ;;        ("NEXT" . ?✒)
    ;;        ("HOLD" . ?✰)
    ;;        ("WAITING" . ?☕)
    ;;        ("CANCELLED" . ?✘)
    ;;        ("DONE" . ?✔)))
    )
  (global-set-key (kbd "C-g") '(lambda ()
                                 (interactive)
                                 (spacemacs/evil-search-clear-highlight)
                                 (evil-ex-nohighlight)
                                 (keyboard-quit)
                                 ))
  (setq flycheck-navigation-minimum-level 'error)
  (setq-default org-download-image-dir "~/Org/assets/")
  ;;(if (display-graphic-p)
  ;;    (spacemacs//set-monospaced-font   "Source Code Pro" "Hiragino Sans GB" 14 16))
  ;; multiple cursors
  (use-package evil-mc
    :commands evil-mc-mode
    :init
    :config
    (evil-define-key '(normal visual) evil-mc-key-map
      (kbd "C-p") #'evil-mc-undo-last-added-cursor
      )
    (evil-define-key '(insert normal visual) evil-mc-key-map
      (kbd "C-g") (lambda ()
                    (interactive)
                    (evil-normal-state)
                    (evil-mc-undo-all-cursors)
                    )
      )
    )


  (with-eval-after-load 'ox-latex
    ;; http://orgmode.org/worg/org-faq.html#using-xelatex-for-pdf-export
    ;; latexmk runs pdflatex/xelatex (whatever is specified) multiple times
    ;; automatically to resolve the cross-references.
    ;;(setq org-latex-pdf-process '("latexmk -xelatex -quiet -shell-escape -f %f"))
    (add-to-list 'org-latex-classes
                 '("texpadcn"
                   "\\documentclass[lang=cn,11pt,a4paper]{article}
                 [NO-DEFAULT-PACKAGES]
                 [PACKAGES]
                 [EXTRA]"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
    ;;(setq org-latex-listings 'minted)
    ;;(add-to-list 'org-latex-packages-alist '("" "minted"))
    )

  (use-package lsp-mode
    :init
    :config
    )

  (use-package expand-region
    :config
    (progn
      ;;(setq expand-region-smart-cursor t)
      (define-key evil-visual-state-map (kbd "v")
        (lambda ()
          (interactive)
          (er/expand-region 1)
          )
        )
      )
    )
  (use-package company
    :ensure t
    :config
    ;;(evil-define-key '(insert) company-mode-map [remap indent-for-tab-command] #'company-indent-or-complete-common
    ;;  )
    ;;(evil-define-key '(insert) company-mode-map [remap c-indent-line-or-region] #'company-indent-or-complete-common
    ;;  )
    (evil-define-key '(insert) company-mode-map (kbd "C-n") #'company-complete)
    )

  (use-package helm-ag
    :ensure t
    :config
    ;;(define-key helm-ag-map (kbd "C-j") #'backward-char)
    (define-key helm-ag-map (kbd "<left>") #'backward-char)
    ;;(define-key helm-ag-map (kbd "C-k") #'forward-char)
    (define-key helm-ag-map (kbd "<right>") #'forward-char)
    )

  ;;(add-hook 'vterm-mode-hook (lambda () ))

  (use-package evil
    :ensure t
    :config
    ;;(define-key evil-insert-state-map"jk" 'save-buffer)
    ;;(add-hook 'evil-visual-state-entry-hook
    ;;          (lambda()
    ;;            (global-hl-line-mode -1)
    ;;            )
    ;;          )
    ;;(add-hook 'evil-visual-state-exit-hook
    ;;          (lambda()
    ;;            (global-hl-line-mode 1)
    ;;            )
    ;;          )
    )

  (use-package key-chord
    :config
    (progn
      (key-chord-mode 1)
      ;;(key-chord-define-global "jk" 'save-buffer)
      (setq key-chord-two-keys-delay 0.2)
      (key-chord-define evil-normal-state-map "fj" 'save-buffer)
      (key-chord-define evil-mc-key-map "fj"
                        (lambda ()
                          (interactive)
                          (evil-normal-state)
                          (evil-mc-undo-all-cursors)
                          )
                        )
      )
    )
  (use-package symbol-overlay
    :ensure t
    :config
    (progn
      (define-key symbol-overlay-map (kbd "C-g") #'symbol-overlay-remove-all)
      )
    )
  (use-package auto-highlight-symbol
    :ensure t
    :config
    (progn
      (define-key auto-highlight-symbol-mode-map (kbd "C-g") #'spacemacs//ahs-ts-on-exit)
      )
    )
  (use-package evil-escape
    :commands evil-escape-mode
    :init
    (setq evil-escape-excluded-states '(normal visual emacs motion multiedit evil-mc)
          evil-escape-excluded-major-modes '(neotree-mode)
          evil-escape-key-sequence "fj"
          evil-escape-delay 0.2)
    (setq evil-escape-inhibit-functions '((lambda () evil-mc-cursor-state)))
    (add-hook 'after-init-hook #'evil-escape-mode)
    :config
    ;; no `evil-escape' in minibuffer
    (cl-pushnew #'minibufferp evil-escape-inhibit-functions :test #'eq)
    (define-key evil-insert-state-map  (kbd "C-g") #'evil-escape)
    (define-key evil-replace-state-map (kbd "C-g") #'evil-escape)
    (define-key evil-visual-state-map  (kbd "C-g") #'evil-escape)
    (define-key evil-operator-state-map (kbd "C-g") #'evil-escape)
    )
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
