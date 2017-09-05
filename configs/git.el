(use-package git
  :ensure magit
  :ensure gitattributes-mode
  :ensure gitconfig-mode
  :ensure gitignore-mode
  :ensure git-timemachine

  :init
  (setq magit-last-seen-setup-instructions "1.4.0"
		magit-completing-read-function 'ivy-completing-read)
  (setq-default git-timemachine-minibuffer-detail (quote commit)))
