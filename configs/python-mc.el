;;; My settings for programming in python-mode

(defun python-mc-settings()
  (interactive)

  ;; use spaces not tabs in the python buffer
  (setq indent-tabs-mode nil)

  ;; enable elpy
  (elpy-enable)
  )

(add-hook 'python-mode-hook
		  (python-mc-settings))

(provide 'python-mc)
