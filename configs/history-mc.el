;; history related configs

;; save some other variables
(setq savehist-additional-variables
	  '(kill-ring search-ring regexp-search-ring))

;; history file
(setq savehist-file "~/.emacs.d/savehist")

(savehist-mode 1)

(provide 'history-mc)
