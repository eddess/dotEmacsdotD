(ensure-installed 'projectile 'helm-projectile 'flx-ido)

(flx-ido-mode 1)

(setq projectile-indexing-method 'alien)
(projectile-global-mode)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)

(provide 'project-mc)
