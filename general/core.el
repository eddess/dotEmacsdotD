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

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/apps/autocomplete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/apps/autocomplete/ac-dict")
(ac-config-default)

;; undo tree
(add-to-list 'load-path "~/.emacs.d/apps/undo-tree")
(require 'undo-tree)
(undo-tree-mode t)

;; eVil mode
(add-to-list 'load-path "~/.emacs.d/apps/evil")
(setq evil-toggle-key "C-`")
(require 'evil)
(evil-mode t)
(setq-default evil-default-cursor '("white" hollow))
(setq-default evil-emacs-state-cursor '("white" box))
(setq-default evil-default-state 'emacs)


;; better handling of large file scrolling
(setq jit-lock-defer-time 0.02)

;; package symbol
(provide 'core)

