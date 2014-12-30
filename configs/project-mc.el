(package-install 'projectile)
(package-install 'helm-projectile)
(package-install 'flx-ido)

(setq projectile-indexing-method 'alien)

;; Set projectile prefix key
(setq projectile-keymap-prefix (kbd "s-p"))

(projectile-global-mode)

;(global-set-key (kbd "s-o") 'projectile-find-file)

(provide 'project-mc)
