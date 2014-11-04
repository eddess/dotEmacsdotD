;;; Eddy Essien
;;; Configs for dealing with web technologies

(require 'completion-mc)

;; function that does the loading and configuring of web-mode for php
(defun html-mc-initialize ()
  (interactive)
  (web-mode)
  (company-mode t))


(add-to-list 'auto-mode-alist
	     '("\\.html\\'" . html-mc-initialize))

;; package variable
(provide 'html-mc)
