(setq user-search-leader (concat user-leader " s"))

(use-package ivy
  :ensure flx
  :ensure ivy
  :ensure counsel

  :init
  (setq ivy-height 5)
  (setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

  :config
  (ivy-mode 1))

(use-package anzu
  :ensure t

  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode t)

  :general
  (:prefix user-search-leader
		   "" '(nil :which-key "Search")
		   "f" '(isearch-forward :which-key "isearch forward")
		   "b" '(isearch-backward :which-key "isearch backward")
		   "r" '(anzu-query-replace :which-key "Replace")

		   ;; Expression search
		   "x" '(nil :which-key "RegExp")
		   "x f" '(isearch-forward-regexp :which-key "regexp forward")
		   "x b" '(isearch-backward-regexp :which-key "regexp backward")
		   "x r" '(anzu-query-replace-regexp :which-key "Replace regexp")))

(use-package avy
  :ensure t

  :general
  (:prefix user-search-leader
		   "j" '(avy-goto-char-timer :which-key "Jump to char")))

(use-package expand-region
  :ensure t

  :init
  (setq user-expand-leader (concat user-leader " e"))

  :general
  (:prefix user-expand-leader
		   "" '(nil :which-key "Expand region")
		   "e" '(er/expand-region :which-key "expand region")
		   "w" '(er/mark-word :which-key "mark word")

		   ;; Pairs
		   "p" '(nil :which-key "Mark pairs")
		   "p i" '(er/mark-inside-pairs :which-key "mark inside pairs")
		   "p o" '(er/mark-outside-pairs :which-key "mark outside pairs")

		   ;; Quotes
		   "q" '(nil :which-key "Mark quotes")
		   "q i" '(er/mark-inside-quotes :which-key "mark inside quotes")
		   "q o" '(er/mark-outside-quotes :which-key "mark outside quotes")
		   ))
