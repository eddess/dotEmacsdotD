;; EVIL mode related things
(use-package evil
  :ensure t

  :init (progn
		  (setq evil-default-state 'normal)
		  (setq evil-toggle-key "C-`")
		  (evil-mode t)))

(provide 'evil-mc)
