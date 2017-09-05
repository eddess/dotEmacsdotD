(use-package smooth-scrolling
  :ensure t

  :init
  (setq-default mouse-wheel-scroll-amount '(4 ((shift) . 4)))
  (setq mouse-wheel-progressive-speed nil)
  (setq mouse-wheel-follow-mouse 't)
  (setq scroll-step 4)

  :config
  (smooth-scrolling-mode 1))
