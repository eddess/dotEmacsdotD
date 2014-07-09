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

;; eVil mode
(setq evil-toggle-key "C-`")
(require 'evil)
(setq-default evil-default-cursor '("white" hollow))
(setq-default evil-emacs-state-cursor '("white" box))
(setq-default evil-default-state 'emacs)
(evil-mode t)

;; better handling of large file scrolling
(setq jit-lock-defer-time 0.05)

;; package symbol
(provide 'core)

