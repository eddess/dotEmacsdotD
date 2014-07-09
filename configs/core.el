;; disable autosaves and backups. This ain't 19-something anymore
(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

;; yes-or-no bound to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; CUA mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; OS specific core settings
(cond
 ((string-equal system-type "windows-nt")(require 'w32-core)))

(cond
 ((string-equal system-type "darwin")(require 'osx-core)))

;; disable the bell
(setq ring-bell-function 'ignore)

;; enable IDo-mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; iedit mode
(require 'iedit)

;; multiple-cursors
(require 'multiple-cursors)

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "C-<tab>")

;; undo tree
(require 'undo-tree)
(undo-tree-mode t)

;; better handling of large file scrolling
(setq jit-lock-defer-time 0.05)

;; frame title
(setq frame-title-format
      '("Emacs - " (buffer-file-name "%f"
				     (dired-directory dired-directory "%b"))))

;; disable start up splash window
(setq inhibit-startup-screen t)

;; font
(when (window-system)
  (cond
   ((string-equal system-type "windows-nt") (set-face-attribute 'default nil :font "Consolas-10"))
   ((string-equal system-type "darwin") (set-face-attribute 'default nil :font "Monaco-12"))))

;; cursor
(setq cursor-type 'bar)

;; default window size in GUI mode
(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(height . 42))

;; Pop up windows/frames control
(setq pop-up-windows t)

;; column numbers
(column-number-mode t)

;; Disable the tool bar in GUI mode
(tool-bar-mode 0)

;; smooth scrolling
(setq-default mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2)

;; package symbol
(provide 'core)

