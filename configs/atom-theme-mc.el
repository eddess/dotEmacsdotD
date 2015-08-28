;;; Configurations for default theme

(let (
	  (bt-blue "#89ABCA")

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

	  (bt-bg "#222")
	  (bt-fg "#CCC"))

  (custom-set-faces

   ;; Fringe
   `(fringe ((t (:background "#1c1c1c"))))

   ;; Basic
   '(button ((t (:inherit (link)))))
   '(cursor ((((background light)) (:background "black")) (((background dark)) (:background "white"))))
   '(default ((t (:foreground "#c5c8c6" :background "#1c1c1c" :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :stipple nil :inherit nil))))
   '(escape-glyph ((t (:foreground "#FF8000"))))
   '(fixed-pitch ((t (:family "Monospace"))))
   '(header-line ((t (:foreground "grey90" :background "grey20"))))
   '(highlight ((t (:background "#444"))))
   '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
   '(link ((t (:inherit font-lock-keyword-face :underline t))))
   '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
   '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
   '(minibuffer-prompt ((t (:foreground "#FF8000"))))
   '(next-error ((t (:inherit (region)))))
   '(query-replace ((t (:inherit (isearch)))))
   '(region ((t (:background "#404040" ))))
   '(secondary-selection ((t (:background "#262626"))))
   '(shadow ((t (:foreground "#7c7c7c"))))
   '(tooltip ((t (:inherit variable-pitch :background "#fff" :foreground "#333"))))
   '(trailing-whitespace ((t (:background "#562d56" :foreground "#FD5FF1"))))
   '(variable-pitch ((t (:family "Sans Serif"))))

   ;; Font-lock
   '(font-lock-builtin-face ((t (:foreground "#DAD085"))))
   '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   '(font-lock-comment-face ((t (:foreground "#7C7C7C"))))
   '(font-lock-constant-face ((t (:foreground "#99CC99"))))
   '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   '(font-lock-function-name-face ((t (:foreground "#FFD2A7"))))
   '(font-lock-keyword-face ((t (:foreground "#96CBFE"))))
   '(font-lock-preprocessor-face ((t (:foreground "#8996A8"))))
   '(font-lock-regexp-grouping-backslash ((t (:inherit font-lock-string-face))))
   '(font-lock-regexp-grouping-construct ((t (:foreground "#C6A24F"))))
   '(font-lock-string-face ((t (:foreground "#8AE234"))))
   '(font-lock-type-face ((t (:foreground "#CFCB90"))))
   ;;  '(font-lock-type-face ((t (:foreground "#FFFFB6" :underline t))))
   '(font-lock-variable-name-face ((t (:inherit (default)))))
   '(font-lock-warning-face ((t (:foreground "#ff982d" :weight bold))))

   ;; mode-line
   '(mode-line ((t (:background "black" :foreground "#96CBFE"))))
   '(mode-line-inactive ((t (:inherit (mode-line) :foreground "#808080"))))

   ;; isearch
   '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "lightskyblue1" :background "magenta3")) (((class color) (min-colors 88) (background dark)) (:foreground "brown4" :background "palevioletred2")) (((class color) (min-colors 16)) (:foreground "cyan1" :background "magenta4")) (((class color) (min-colors 8)) (:foreground "cyan1" :background "magenta4")) (t (:inverse-video t))))
   '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))

   ;; diff-hl (https://github.com/dgutov/diff-hl)
   '(diff-hl-change ((t (:foreground "#E9C062" :background "#8b733a"))))
   '(diff-hl-delete ((t (:foreground "#CC6666" :background "#7a3d3d"))))
   '(diff-hl-insert ((t (:foreground "#A8FF60" :background "#547f30"))))

   ;; dired-mode
   '(dired-directory ((t (:inherit (font-lock-keyword-face)))))
   '(dired-flagged ((t (:inherit (diff-hl-delete)))))
   '(dired-symlink ((t (:foreground "#FD5FF1"))))

   ;; guide-key (https://github.com/kai2nenobu/guide-key)
   '(guide-key/highlight-command-face ((t (:inherit (cursor)))))
   '(guide-key/key-face ((t (:inherit (font-lock-warning-face)))))
   '(guide-key/prefix-command-face ((t (:inherit (font-lock-keyword-face)))))

   ;; flx-ido (https://github.com/lewang/flx)
   '(flx-highlight-face ((t (:inherit (link) :weight bold))))

   ;; markdown-mode (http://jblevins.org/projects/markdown-mode/)
   ;;
   ;; Note: Atom Dark Theme for Atom.io does not currently theme some things that markdown-mode does.  For cases where
   ;;       Atom.io does not provide theming, this theme will leave the theming done by markdown-mode as-is.  Where both
   ;;       Atom.io and markdown-mode provide theming, markdown-mode's theming will be changed to match that of Atom.io.
   '(markdown-blockquote-face ((t :foreground "#555")))
   '(markdown-header-face ((t :foreground "#eee")))
   '(markdown-header-delimiter-face ((t (:inherit (markdown-header-face)))))
   '(markdown-header-rule-face ((t (:inherit (font-lock-comment-face)))))

   ;; Js2-mode (https://github.com/mooz/js2-mode)
   '(js2-error ((t (:foreground "#c00"))))
   '(js2-external-variable ((t (:inherit (font-lock-builtin-face)))))
   '(js2-function-param ((t (:foreground "#C6C5FE"))))
   '(js2-jsdoc-html-tag-delimiter ((t (:foreground "#96CBFE"))))
   '(js2-jsdoc-html-tag-name ((t (:foreground "#96CBFE"))))
   '(js2-jsdoc-tag ((t (:inherit (font-lock-doc-face):weight bold))))
   '(js2-jsdoc-type ((t (:inherit (font-lock-type-face)))))
   '(js2-jsdoc-value ((t (:inherit (js2-function-param)))))

   ;; minimap (https://github.com/dengste/minimap)
   '(minimap-active-region-background ((t (:inherit (highlight)))))

   ;; powerline (https://github.com/milkypostman/powerline)
   '(powerline-active2 ((t (:background "grey10"))))

   ;; speedbar
   '(speedbar-button-face ((t (:foreground "#AAAAAA"))))
   '(speedbar-directory-face ((t (:inherit (font-lock-keyword-face)))))
   '(speedbar-file-face ((t (:inherit (default)))))
   '(speedbar-highlight-face ((t (:inherit (highlight)))))
   '(speedbar-selected-face ((t (:background "#4182C4" :foreground "#FFFFFF"))))
   '(speedbar-separator-face ((t (:background "grey11" :foreground "#C5C8C6" :overline "#7C7C7C"))))
   '(speedbar-tag-face ((t (:inherit (font-lock-function-name-face)))))

   ;; whitespace
   '(whitespace-empty ((t (:foreground "#333333"))))
   '(whitespace-hspace ((t (:inherit (whitespace-empty)))))
   '(whitespace-indentation ((t (:inherit (whitespace-empty)))))
   '(whitespace-line ((t (:inherit (trailing-whitespace)))))
   '(whitespace-newline ((t (:inherit (whitespace-empty)))))
   '(whitespace-space ((t (:inherit (whitespace-empty)))))
   '(whitespace-space-after-tab ((t (:inherit (whitespace-empty)))))
   '(whitespace-space-before-tab ((t (:inherit (whitespace-empty)))))
   '(whitespace-tab ((t (:inherit (whitespace-empty)))))
   '(whitespace-trailing ((t (:inherit (trailing-whitespace)))))
   ))

(provide 'atom-theme-mc)
