;; auto-complete with company-mode
(use-package company

  :init
  ;; very litte delay. start completing right away
  (setq-default company-idle-delay 0.05)

  :bind
  ;; force auto completion with key binding
  (("C-<tab>" . company-complete-common)))
