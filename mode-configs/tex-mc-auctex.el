;; gs command on 64-bit windows
(when (string-equal system-type "windows-nt")
  (setq preview-gs-command "GSWIN64C.exe"))


;; column width for LaTeX mode
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook
		  '(lambda() (set-fill-column 120)))

;; auto-complete for LaTeX
(add-hook 'LaTeX-mode-hook
		  '(lambda() (auto-complete-mode t)))

;; advanced master file dealings
(add-hook 'LaTeX-mode-hook
		  '(lambda() (setq-default TeX-master nil)))

;; get RefTeX to work with AucTeX
(add-hook 'LaTeX-mode-hook
		  '(lambda ()
			 (require 'reftex-auc)
			 (turn-on-reftex)))
(setq-default reftex-plug-into-AUCTeX t)
(setq-default reftex-sort-bibtex-matches 'author)

;; features
(provide 'tex-mc-auctex)
