(require 'core)

;; auto-indentation via the the return key
(define-key global-map (kbd "RET") 'newline-and-indent)

;; indentation
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 160 4))
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)

;; package variable
(provide 'keymappings)
