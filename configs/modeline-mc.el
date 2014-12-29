(setq-default mode-line-format
	      '("%e" mode-line-front-space
		mode-line-position
		mode-line-frame-identification
		mode-line-buffer-identification
		"  "
		(vc-mode vc-mode)
		""
		mode-line-misc-info
		))

(provide 'modeline-mc)
