(use-package helm-projectile)

(use-package projectile

  :init
  (setq projectile-indexing-method 'alien)

  ;; Set projectile prefix key
  (setq projectile-keymap-prefix (kbd "C-c p"))

  (projectile-global-mode))
