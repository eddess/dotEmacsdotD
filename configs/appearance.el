(require 'core)

;; frame title
(setq frame-title-format
      '("Emacs - " (buffer-file-name "%f"
				     (dired-directory dired-directory "%b"))))

;; disable start up splash window
(setq inhibit-startup-screen t)

;; font
(when window-system
  (cond
   ((string-equal system-type "windows-nt") (set-face-attribute 'default nil :font "Consolas-10"))
   ((string-equal system-type "darwin") (set-face-attribute 'default nil :font "Menlo-12"))))

;; cursor
(setq cursor-type 'bar)

;; default window size in GUI mode
(when window-system
  (add-to-list 'default-frame-alist '(width . 120))
  (add-to-list 'default-frame-alist '(height . 42)))

;; Pop up windows/frames control
(setq pop-up-windows t)

;; column numbers
(column-number-mode t)

;; Disable the tool bar in GUI mode
(when window-system
  (tool-bar-mode 0))

;; smooth scrolling
(setq-default mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a timez

;; appearance and tags of evil-mode
(when (require 'evil "dont-force.el" t)
  (setq evil-normal-state-tag   (propertize "< Normal >")
      evil-emacs-state-tag    (propertize "< Emacs >")
      evil-insert-state-tag   (propertize "< Insert >")
      evil-motion-state-tag   (propertize "< Motion >")
      evil-visual-state-tag   (propertize "< Visual >")
      evil-operator-state-tag (propertize "< Operator >")))

;; package variable
(provide 'appearance)
