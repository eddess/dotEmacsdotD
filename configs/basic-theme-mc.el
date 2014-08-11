;;; Configurations for default theme

(let ((bt-blue "#3535AE")

	  (bt-red "#963232")
	  
      (bt-gray "#595959")
	  (bt-gray-lightest "#E8E8E8")
	  (bt-gray-light "#C9C9C9")
	  
	  (bt-green "#326432")
      
      (bt-magenta "#643253")

	  (bt-purple "#4F306B")

	  (bt-yellow "#A26136")

	  (bt-cyan "#1C5959")

	  (bt-white "#FFFFFF")

	  (bt-black "#000000"))

  ;; Set the color of the fringe
  (custom-set-faces
   ;; Fringe
   `(fringe ((t (:background ,bt-white))))
 
   ;; basic faces 
   `(default ((t (:foreground ,bt-black :background ,bt-white))))
   `(cursor ((t (:foreground ,bt-black))))
   `(minibuffer-prompt ((t (:foreground ,bt-blue :weight Bold))))
   `(modeline ((t (:background ,bt-gray-lightest :foreground ,bt-black))))
   `(region ((t (:background ,bt-gray-light))))

   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,bt-green :weight Bold))))
   `(font-lock-comment-face ((t (:foreground ,bt-gray))))
   `(font-lock-constant-face ((t (:foreground ,bt-yellow))))
   `(font-lock-doc-string-face ((t (:foreground ,bt-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,bt-green))))
   `(font-lock-keyword-face ((t (:foreground ,bt-red :weight Bold))))
   `(font-lock-string-face ((t (:foreground ,bt-yellow))))
   `(font-lock-type-face ((t (:foreground ,bt-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,bt-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,bt-yellow))))

   ;; IDO
   `(ido-first-match ((t (:foreground ,bt-purple :weight Bold))))
   `(ido-only-match ((t (:foreground ,bt-green :weight Bold))))
   `(ido-subdir ((t (:foreground ,bt-cyan :weight Bold))))
  ))

(provide 'basic-theme-mc)
