;;; Eddy Essien
;;; Configs for dealing with web technologies

;; loader flag
(setq php-mc-loaded nil)

;; function that does the loading and configuring of web-mode for php
(defun php-mc-initialize ()
  (interactive)
  (when (not php-mc-loaded)
    (require 'web-mode "~/.emacs.d/apps/web-mode/web-mode.el")
    (setq php-mc-loaded t))
  (web-mode))
  

;; php files
(add-to-list 'auto-mode-alist
	     '("\\.php\\'" . php-mc-initialize))

;; package variable
(provide 'php-mc)
