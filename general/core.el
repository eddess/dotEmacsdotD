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

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/apps/autocomplete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/apps/autocomplete/ac-dict")
(ac-config-default)

;; YaSnippet
(add-to-list 'load-path "~/.emacs.d/apps/yasnippet")
;(require 'yasnippet)
;(yas-global-mode 1)

;; package symbol
(provide 'core)

