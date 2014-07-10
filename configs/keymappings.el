(require 'core)

;; default indentation
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 160 4))
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)
;(setq-default indent-line-function 'insert-tab)

;; package variable
(provide 'keymappings)
