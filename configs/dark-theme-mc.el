;;; Configurations for default theme

(let (
	  (bt-blue "#00AAFF")

	  (bt-red "#C66363")
	  (bt-red-error "#E90000")

      (bt-gray "#505050")
	  (bt-gray-lightest "#707070")
	  (bt-gray-light "#909090")

	  (bt-green "#7CBC7C")

      (bt-magenta "#B47FC4")

	  (bt-purple "#8D7EBC")

	  (bt-yellow "#CCAA66")

	  (bt-orange-warning "#FF9100")

	  (bt-cyan "#5CBAB6")
	  (bt-cyan-info "#81F7F3")

	  (bt-bg "#000000")
	  (bt-fg "#EEEEEE"))

  ;; Set the color of the fringe
  (custom-set-faces
   ;; Fringe
   `(fringe ((t (:background ,bt-bg))))

   ;; basic faces
   `(default ((t (:foreground ,bt-fg :background ,bt-bg))))
   `(cursor ((t (:foreground ,bt-fg :background ,bt-fg))))
   `(minibuffer-prompt ((t (:foreground ,bt-blue ))))
   `(region ((t (:background ,bt-gray))))

   ;; Font lock
   `(font-lock-builtin-face ((t (:foreground ,bt-red))))
   `(font-lock-comment-face ((t (:foreground ,bt-gray-light))))
   `(font-lock-constant-face ((t (:foreground ,bt-yellow))))
   `(font-lock-doc-face ((t (:foreground ,bt-gray-light))))
   `(font-lock-function-name-face ((t (:foreground ,bt-green))))
   `(font-lock-keyword-face ((t (:foreground ,bt-red))))
   `(font-lock-string-face ((t (:foreground ,bt-yellow))))
   `(font-lock-type-face ((t (:foreground ,bt-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,bt-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,bt-orange-warning))))

   ; modeline
   `(mode-line ((t (:foreground ,bt-bg :background ,bt-fg))))

   ;; IDO
   `(ido-first-match ((t (:foreground ,bt-purple ))))
   `(ido-only-match ((t (:foreground ,bt-green ))))
   `(ido-subdir ((t (:foreground ,bt-cyan ))))

   ;; ansi term colors
   `(term-color-black ((t (:foreground ,bt-bg ))))
   `(term-color-red ((t (:foreground ,bt-red ))))
   `(term-color-green ((t (:foreground ,bt-green ))))
   `(term-color-yellow ((t (:foreground ,bt-yellow ))))
   `(term-color-blue ((t (:foreground ,bt-blue ))))
   `(term-color-magenta ((t (:foreground ,bt-magenta ))))
   `(term-color-cyan ((t (:foreground ,bt-cyan ))))
   `(term-color-white ((t (:foreground ,bt-fg ))))
   '(term-default-fg-color ((t (:inherit term-color-black ))))
   '(term-default-bg-color ((t (:inherit term-color-white ))))

   ;; Flycheck
   `(flycheck-error ((t (:foreground ,bt-red-error ))))
   `(flycheck-warning ((t (:foreground ,bt-orange-warning ))))
   `(flycheck-info ((t (:foreground ,bt-cyan-info ))))

   ;; Company completion
   `(company-tooltip ((t (:background ,bt-gray-lightest :foreground ,bt-bg))))
   `(company-tooltip-selection ((t (:background ,bt-yellow :foreground ,bt-bg))))
   `(company-tooltip-mouse ((t (:background ,bt-green))))
   `(company-preview-common ((t (:foreground ,bt-cyan))))

   ;; Magit
   `(magit-section-title ((t (:underline t :foreground ,bt-cyan))))
   ))

(provide 'dark-theme-mc)
