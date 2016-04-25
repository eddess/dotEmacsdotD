(package-install 'projectile)
(package-install 'helm-projectile)
(package-install 'flx-ido)

(setq projectile-indexing-method 'alien)

;; Set projectile prefix key
(setq projectile-keymap-prefix (kbd "C-c p"))

(projectile-global-mode)

(provide 'project-mc)
