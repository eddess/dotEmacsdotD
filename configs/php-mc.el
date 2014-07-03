;;; Eddy Essien
;;; Configs for dealing with web technologies

;; function that does the loading and configuring of web-mode for php
(defun php-mc-initialize ()
  (interactive)
  (when (require 'web-mode)
	(web-mode))
  (auto-complete-mode))


;; php files
(add-to-list 'auto-mode-alist
	     '("\\.php\\'" . php-mc-initialize))

;; package variable
(provide 'php-mc)
