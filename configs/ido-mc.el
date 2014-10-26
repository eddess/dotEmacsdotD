;; enable IDo-mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq-default ido-auto-merge-work-directories-length -1)

; side some extensions
(setq ido-ignore-files '("*.pyc" ".exe"))

(provide 'ido-mc)
