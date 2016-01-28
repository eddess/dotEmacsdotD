(package-install 'magit)
(package-install 'gitattributes-mode)
(package-install 'gitconfig-mode)
(package-install 'gitignore-mode)

(setq magit-last-seen-setup-instructions "1.4.0")
(global-git-commit-mode t)

(setq-default git-timemachine-minibuffer-detail (quote commit))

(provide 'magit-mc)
