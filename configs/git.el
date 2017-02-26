(use-package magit
  :init
  (setq magit-last-seen-setup-instructions "1.4.0"))

(use-package gitattributes-mode)
(use-package gitconfig-mode)
(use-package gitignore-mode)

(use-package git-timemachine
  :init
  (setq-default git-timemachine-minibuffer-detail (quote commit)))
