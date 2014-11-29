;;; configurations for powerline

(require 'cl)
(ensure-installed 'powerline)

;; powerline arrow shape: arrow, curve or arrow14
(setq powerline-arrow-shape 'arrow14)

;; turn on powerline
(powerline-default-theme)

(provide 'powerline-mc)
