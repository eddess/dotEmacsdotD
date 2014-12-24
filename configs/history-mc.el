;; history related configs

(setq savehist-file "~/.emacs.d/savehist")

(setq savehist-additional-variables
	  '(kill-ring
		search-ring
		regexp-search-ring))

(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)

(savehist-mode 1)

(provide 'history-mc)
