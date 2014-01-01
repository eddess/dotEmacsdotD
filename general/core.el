;; disable autosaves and backups. This ain't 19-something anymore
(setq backup-inhibited t)
(setq auto-save-default nil)

;; yes-or-no bound to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; OS specific core settings
(cond
 ((string-equal system-type "windows-nt")(require 'w32-core)))

;; disable the bell
(setq ring-bell-function 'ignore)

;; package symbol
(provide 'core)

