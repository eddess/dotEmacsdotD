(package-install 'smex)
(package-install 'ido-vertical-mode)

(setq ido-enable-flex-matching t)
(setq-default ido-auto-merge-work-directories-length -1)
(ido-vertical-mode 1)
(flx-ido-mode 1)
(ido-mode t)

;; bookmarks
(global-set-key
 (kbd "C-x r b")
 (lambda ()
   (interactive)
   (bookmark-jump
	(ido-completing-read "Jump to bookmark: " (bookmark-all-names)))))

;; hide some extensions
(setq ido-ignore-files '("*.pyc" ".exe"))

;; buffer selection
(define-key global-map (kbd "s-b") 'ido-switch-buffer)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'interactive-mc)
