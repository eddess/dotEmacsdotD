;;; Eddy Essien
;;; Configs for dealing with web technologies

;; function that does the loading and configuring of web-mode for php
(defun tex-mc-initialize ()
  (interactive)
  (require 'tex-site "~/.emacs.d/apps/auctex/site-start.el" t)
  (tex-mode))

;; Files ending in .tex
(add-to-list 'auto-mode-alist
			 '("\\.tex$" . tex-mc-initialize))

;; package variable
(provide 'tex-mc)
