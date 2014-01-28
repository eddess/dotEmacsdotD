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
;; features
(provide 'tex-mc-auctex)
