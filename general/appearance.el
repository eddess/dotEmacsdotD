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
   ((string-equal system-type "windows-nt") (set-face-attribute 'default nil :font "Consolas-13"))
   ((string-equal system-type "darwin") (set-face-attribute 'default nil :font "Menlo-12"))))

;; cursor
(setq default-cursor-type 'bar)

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

;; package variable
(provide 'appearance)
