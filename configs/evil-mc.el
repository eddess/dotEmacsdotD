;; EVIL mode related things
(use-package evil
  :ensure t

  :init (progn
		  (setq evil-default-state 'emacs)
		  (evil-mode t)))

(provide 'evil-mc)
