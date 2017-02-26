(use-package smex

  :init
  (bind-key "M-x" 'smex)
  (bind-key "M-X" 'smex-major-mode-commands)
  (bind-key "C-c C-c M-x" 'execute-extended-command))

(use-package flx-ido

  :init
  (setq ido-enable-flex-matching t)
  (setq-default ido-auto-merge-work-directories-length -1)
  (flx-ido-mode 1)
  (ido-mode t)

  ;; hide some extensions
  (setq ido-ignore-files '("*.pyc" ".exe"))

  ;; bookmarks
  (bind-key "C-x r b"
			(lambda ()
			  (interactive)
			  (bookmark-jump
			   (ido-completing-read "Jump to bookmark: " (bookmark-all-names))))))
