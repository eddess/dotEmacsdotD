;; auto-complete
(ensure-installed 'auto-complete 'company)

(require 'auto-complete-config)
(ac-set-trigger-key "C-<tab>")

(provide 'autocomplete-mc)
