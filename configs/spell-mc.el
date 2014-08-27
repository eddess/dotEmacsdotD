;; Make use of aspell
(setq ispell-program-name "aspell")
(setq ispell-personal-dictionary "~/.spell_dict")
(setq flyspell-issue-message-flag nil)
(setq ispell-list-command "--list")
(ensure-installed 'ispell)

;; keybindings
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-<f8>") 'flyspell-mode)

(provide 'spell-mc)
