(package-install 'expand-region)
(require 'expand-region-core)

;; keybindings (prefix with C-c e)
(global-unset-key (kbd "C-c e"))

(global-set-key (kbd "C-c e e") 'er/expand-region)

(global-set-key (kbd "C-c e w") 'er/mark-word)

(global-set-key (kbd "C-c e m") 'er/mark-method-call)

(global-set-key (kbd "C-c e i p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-c e o p") 'er/mark-outside-pairs)

(global-set-key (kbd "C-c e i q") 'er/mark-inside-quotes)
(global-set-key (kbd "C-c e o q") 'er/mark-outside-quotes)


(provide 'expand-region-mc)
