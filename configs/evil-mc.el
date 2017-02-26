;; EVIL mode related things
(use-package evil
  :ensure t

  :init (progn
		  (setq evil-default-state 'normal)
		  (evil-mode t)))

(provide 'evil-mc)
