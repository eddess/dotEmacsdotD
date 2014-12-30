;; auto-complete with company-mode
(package-install 'company)

;; very litte delay. start completing right away
(setq-default company-idle-delay 0.1)

;; force auto completion with key binding
(global-set-key (kbd "C-<tab>") 'company-complete-common)

(provide 'completion-mc)
