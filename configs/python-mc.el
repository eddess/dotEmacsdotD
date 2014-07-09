;;; My settings for programming in python-mode

(defun python-mc-settings()
  (interactive)

  ;; use spaces not tabs
  (setq indent-tabs-mode nil)
  )

(add-hook 'python-mode-hook
		  (python-mc-settings))

(provide 'python-mc)
