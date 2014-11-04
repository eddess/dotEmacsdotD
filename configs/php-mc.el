;;; Eddy Essien
;;; Configs for dealing with web technologies

(ensure-installed 'web-mode)
(require 'completion-mc)

;; function that does the loading and configuring of web-mode for php
(defun php-mc-initialize ()
  (interactive)
  (web-mode)
  (auto-complete-mode))


;; php files
(add-to-list 'auto-mode-alist
	     '("\\.php\\'" . php-mc-initialize))

;; package variable
(provide 'php-mc)
