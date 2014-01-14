;; disable autosaves and backups. This ain't 19-something anymore
(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

;; yes-or-no bound to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

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

;; package symbol
(provide 'core)

