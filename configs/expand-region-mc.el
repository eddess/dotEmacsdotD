(package-install 'expand-region)
(require 'expand-region-core)

;; keybindings (prefix with s-e)
(global-unset-key (kbd "s-e"))

(global-set-key (kbd "s-e s-e") 'er/expand-region)

(global-set-key (kbd "s-e w") 'er/mark-word)

(global-set-key (kbd "s-e m") 'er/mark-method-call)

(global-set-key (kbd "s-e i p") 'er/mark-inside-pairs)
(global-set-key (kbd "s-e o p") 'er/mark-outside-pairs)

(global-set-key (kbd "s-e i q") 'er/mark-inside-quotes)
(global-set-key (kbd "s-e o q") 'er/mark-outside-quotes)


(provide 'expand-region-mc)
