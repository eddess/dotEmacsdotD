;; EVIL mode related things
(package-install 'evil)

;; start in emacs mode
(setq evil-default-state 'emacs)

;; don't tag the modeline. I'll do it myself
(setq evil-mode-line-format nil)

(evil-mode t)

(provide 'evil-mc)
