;;; Eddy Essien
;;; Configs for dealing with tex technologies

;; function that does the loading and configuring of AucTex

(defun tex-mc-initialize ()
  (interactive)
  (when (require 'tex-site "~/.emacs.d/apps/auctex/site-start.el" t)
	(require 'tex-mc-auctex))
  (tex-mode))

;; Files ending in .tex
(add-to-list 'auto-mode-alist
			 '("\\.tex$" . tex-mc-initialize))

(add-hook 'LaTeX-mode-hook
		  '(lambda ()
			 (require 'reftex)
			 (turn-on-reftex)))

;; package variable
(provide 'tex-mc)
