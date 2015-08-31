(setq-default mode-line-format
			  '("%e"
				mode-line-front-space
				mode-line-position
				mode-line-frame-identification
				mode-line-buffer-identification
				mode-line-modified
				" "
				(vc-mode vc-mode)
				" "
				mode-line-modes
				mode-line-misc-info
				))

(provide 'modeline-mc)
