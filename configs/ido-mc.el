;; enable IDo-mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq-default ido-auto-merge-work-directories-length -1)
(flx-ido-mode 1)

;; ido bookmarks
(global-set-key
 (kbd "C-x r b")
 (lambda ()
   (interactive)
   (bookmark-jump
	(ido-completing-read "Jump to bookmark: " (bookmark-all-names)))))

;; hide some extensions
(setq ido-ignore-files '("*.pyc" ".exe"))

(provide 'ido-mc)
