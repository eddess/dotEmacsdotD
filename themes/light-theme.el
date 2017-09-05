;;; Configurations for default theme

(let ((bt-blue "#2F2FAA")

	  (bt-red "#a22f2a")
	  (bt-red-error "#E90000")

      (bt-gray-darker "#808080")
      (bt-gray-dark "#A1A1A1")
      (bt-gray "#B2B2B2")
	  (bt-gray-light "#C6C6C6")
	  (bt-gray-lighter "#E4E4E4")

	  (bt-green "#004C1A")

      (bt-magenta "#9C2073")

	  (bt-purple "#3B006F")

	  (bt-brown "#b25900")

	  (bt-orange-warning "#FF9100")

	  (bt-cyan "#006565")
	  (bt-cyan-info "#1B9393")
	  (bt-cyan-light "#BAF1F2")

	  (bt-white "#FFFFFF")

	  (bt-black "#000000")

	  (bt-fg "#181818")

	  (bt-bg "#FFFFFF"))

  ;; Set the color of the fringe
  (custom-set-faces
   ;; Fringe
   `(fringe ((t (:background ,bt-bg))))

   ;; basic faces
   `(default ((t (:foreground ,bt-fg :background ,bt-bg))))
   `(cursor ((t (:foreground ,bt-bg :background ,bt-fg))))
   `(minibuffer-prompt ((t (:foreground ,bt-blue :weight Bold))))
   `(region ((t (:background ,bt-gray-light))))

   ;; Font lock
   `(font-lock-builtin-face ((t (:foreground ,bt-green :weight Bold))))
   `(font-lock-comment-face ((t (:foreground ,bt-gray-darker))))
   `(font-lock-constant-face ((t (:foreground ,bt-brown))))
   `(font-lock-doc-string-face ((t (:foreground ,bt-gray))))
   `(font-lock-function-name-face ((t (:foreground ,bt-green))))
   `(font-lock-keyword-face ((t (:foreground ,bt-red :weight Bold))))
   `(font-lock-string-face ((t (:foreground ,bt-brown))))
   `(font-lock-type-face ((t (:foreground ,bt-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,bt-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,bt-brown))))

   ; modeline
   `(mode-line ((t
				 (:box (:line-width 1 :color ,bt-gray :style none)
					   :foreground ,bt-fg
					   :background ,bt-gray))))
   `(powerline-active1 ((t (:background ,bt-gray-lighter))))
   `(powerline-active2 ((t (:background ,bt-gray-light))))

   `(mode-line-inactive ((t
						  (:inherit (mode-line)
									:background ,bt-fg
									:foreground ,bt-gray-light))))
   `(powerline-inactive1 ((t (:background ,bt-gray-darker))))
   `(powerline-inactive2 ((t (:background ,bt-gray-darker))))

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

   ;; Magit and git
   `(magit-branch-local ((t (:foreground ,bt-red))))
   `(magit-branch-remote ((nil (:foreground ,bt-green))))
   `(magit-hash ((t (:foreground ,bt-brown))))
   `(magit-section-heading ((t (:foreground ,bt-cyan))))

   `(magit-popup-heading  ((t (:inherit (magit-section-heading)))))
   `(magit-popup-key  ((t (:foreground ,bt-red))))

   `(magit-process-ok  ((t (:foreground ,bt-green))))
   `(magit-process-ng  ((t (:foreground ,bt-red))))

   `(magit-diffstat-added  ((t (:inherit (magit-process-ok)))))
   `(magit-diffstat-removed  ((t (:inherit (magit-process-ng)))))
   `(magit-diff-file-heading ((t (:weight normal))))

   `(git-commit-comment-heading  ((t (:inherit (magit-section-heading)))))
   `(git-commit-comment-branch  ((t (:inherit (magit-branch-local)))))

   `(git-timemachine-minibuffer-detail-face ((t (:foreground ,bt-brown))))

   ;; Filetype based
   `(sh-quoted-exec ((t (:foreground ,bt-green))))

   ;; Anzu
   `(anzu-mode-line ((t (:foreground ,bt-fg))))
   `(anzu-replace-highlight ((t (:background ,bt-cyan-light :strike-through t))))
   `(anzu-replace-to ((t (:foreground ,bt-red))))

   ;; Ivy
   `(ivy-current-match ((t (:background ,bt-gray-lighter))))
   `(ivy-minibuffer-match-face-1 ((t (:inherit (default)))))
   `(ivy-minibuffer-match-face-2 ((t (:inherit (default)))))
   `(ivy-minibuffer-match-face-3 ((t (:inherit (default)))))
   `(ivy-minibuffer-match-face-4 ((t (:inherit (default)))))

   ;; Persp-mode
   `(persp-selected-face ((t (:foreground ,bt-fg))))
  ))
