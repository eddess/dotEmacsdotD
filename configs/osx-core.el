;; unset annoying keys
(global-unset-key (kbd "s-p"))
(global-unset-key (kbd "s-o"))

;; tramp
(setq tramp-default-method "ssh")

;; set the funtion hey to be the hyper key
(setq ns-function-modifier 'hyper)

;; Buffer movement
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; File open
;(global-set-key (kbd "s-o") 'find-file)

;; Frame movement
(global-set-key (kbd "M-s-<left>") 'ns-prev-frame)
(global-set-key (kbd "M-s-<right>") 'ns-next-frame)

;; Font

;; package variable
(provide 'osx-core)
