(use-package magit
  :ensure t
  :init
  (setq magit-last-seen-setup-instructions "1.4.0"))

(use-package git-timemachine
  :ensure gitattributes-mode
  :ensure gitconfig-mode
  :ensure gitignore-mode
  :ensure git-timemachine

  :init
  (setq-default git-timemachine-minibuffer-detail (quote commit)))
