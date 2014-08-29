;;; Configurations for default theme

(let ((bt-blue "#3535AE")

	  (bt-red "#940000")
	  (bt-red-error "#E90000")

      (bt-gray "#909090")
	  (bt-gray-lightest "#E0E0E0")
	  (bt-gray-light "#C9C9C9")

	  (bt-green "#004000")

      (bt-magenta "#9C2073")

	  (bt-purple "#3B006F")

	  (bt-brown "#7A3100")

	  (bt-orange-warning "#FF9100")

	  (bt-cyan "#006565")
	  (bt-cyan-info "#16E9E9")

	  (bt-white "#FFFFFF")

	  (bt-black "#000000")

	  (bt-fg "#000000")

	  (bt-bg "#FFFFFF"))

  ;; modeline colors
  (set-face-foreground 'mode-line bt-fg)
  (set-face-background 'mode-line bt-gray-lightest)

  ;; Set the color of the fringe
  (custom-set-faces
   ;; Fringe
   `(fringe ((t (:background ,bt-bg))))

   ;; basic faces
   `(default ((t (:foreground ,bt-fg :background ,bt-bg))))
   `(cursor ((t (:foreground ,bt-bg))))
   `(minibuffer-prompt ((t (:foreground ,bt-blue :weight Bold))))
   `(region ((t (:background ,bt-gray-lightest))))

   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,bt-green :weight Bold))))
   `(font-lock-comment-face ((t (:foreground ,bt-gray))))
   `(font-lock-constant-face ((t (:foreground ,bt-brown))))
   `(font-lock-doc-string-face ((t (:foreground ,bt-gray-light))))
   `(font-lock-function-name-face ((t (:foreground ,bt-green))))
   `(font-lock-keyword-face ((t (:foreground ,bt-red :weight Bold))))
   `(font-lock-string-face ((t (:foreground ,bt-brown))))
   `(font-lock-type-face ((t (:foreground ,bt-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,bt-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,bt-brown))))

   ;; IDO
   `(ido-first-match ((t (:foreground ,bt-purple :weight Bold))))
   `(ido-only-match ((t (:foreground ,bt-green :weight Bold))))
   `(ido-subdir ((t (:foreground ,bt-cyan :weight Bold))))

   ;; ansi term colors
   `(term-color-black ((t (:foreground ,bt-bg :weight Bold))))
   `(term-color-red ((t (:foreground ,bt-red :weight Bold))))
   `(term-color-green ((t (:foreground ,bt-green :weight Bold))))
   `(term-color-yellow ((t (:foreground ,bt-brown :weight Bold))))
   `(term-color-blue ((t (:foreground ,bt-blue :weight Bold))))
   `(term-color-magenta ((t (:foreground ,bt-magenta :weight Bold))))
   `(term-color-cyan ((t (:foreground ,bt-cyan :weight Bold))))
   `(term-color-white ((t (:foreground ,bt-fg :weight Bold))))
   '(term-default-fg-color ((t (:inherit term-color-black :weight Bold))))
   '(term-default-bg-color ((t (:inherit term-color-white :weight Bold))))

   ;; Flycheck
   `(flycheck-error ((t (:foreground ,bt-red-error :weight Bold))))
   `(flycheck-warning ((t (:foreground ,bt-orange-warning :weight Bold))))
   `(flycheck-info ((t (:foreground ,bt-cyan-info :weight Bold))))
  ))

(provide 'basic-theme-mc)
