(use-package projectile
  :ensure projectile
  :ensure counsel-projectile

  :init
  (setq projectile-indexing-method 'alien
		projectile-keymap-prefix (kbd "C-c p")
		projectile-completion-system 'ivy)

  :config
  (projectile-global-mode)
  (counsel-projectile-on))
