;; Org mode configurations

;; ==== Basic Org settings ====

;; Org mode entry prefix
(setq-default org-prefix "C-c o ")

;; Basic org commands
(bind-key (concat org-prefix "l") 'org-store-link)
(bind-key (concat org-prefix "a") 'org-agenda)
(bind-key (concat org-prefix "c") 'org-capture)
(bind-key (concat org-prefix "b") 'org-iswitchb)
