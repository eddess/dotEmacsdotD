;; Org mode configurations

;; ==== Basic Org settings ====

;; Org mode entry prefix
(setq-default org-prefix "C-c o ")

;; Basic org commands
(global-set-key (kbd (concat org-prefix "l")) 'org-store-link)
(global-set-key (kbd (concat org-prefix "a")) 'org-agenda)
(global-set-key (kbd (concat org-prefix "c")) 'org-capture)
(global-set-key (kbd (concat org-prefix "b")) 'org-iswitchb)

(provide 'org-mode-mc)
