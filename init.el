;; ===================== 1.Core =======================

;; disable start up splash window
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;;; default directory
(setq default-directory "~/")

;; custom file
(setq custom-file "~/.emacs.d/customizations.el")

;; package management
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
;; ensure packages
(defun ensure-installed (&rest packages)
  " Ensure packages are installed "
  (if (not (file-exists-p "~/.emacs.d/elpa-download.txt"))
	  (progn
	   (package-refresh-contents)
	   (with-temp-file "~/.emacs.d/elpa-download.txt"
		 (insert "downloaded"))))
  (while packages
    (setq p (pop packages))
    (if (not (package-installed-p p))
		(progn
		  (message "Ensuring %s" p)
		  (package-install p)))))


;; load path
(add-to-list 'load-path "~/.emacs.d/configs")
(add-to-list 'load-path "~/.emacs.d/themes")

;; info path
(setq Info-default-directory-list
      (append Info-default-directory-list
			  '("~/.emacs.d/info")))

;; disable autosaves and backups. This ain't 197-something anymore
(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

;; yes-or-no bound to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; CUA mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; OS specific core settings
(cond
 ((string-equal system-type "windows-nt")(require 'w32-core))
 ((string-equal system-type "darwin")(require 'osx-core)))

;; disable the bell
(setq ring-bell-function 'ignore)

;; better handling of large file scrolling
; (setq jit-lock-defer-time 0.04)

;; frame title
(setq frame-title-format
      '("Emacs - " (buffer-file-name "%f"
				     (dired-directory dired-directory "%b"))))

;; cursor
(setq cursor-type 'bar)
(blink-cursor-mode 0)

;; default window size in GUI mode
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 42))

;; Pop up windows/frames control
(setq pop-up-windows t)

;; column numbers
(column-number-mode t)

;; Disable the tool bar in GUI mode
(if (display-graphic-p)
	(tool-bar-mode 0))

;; disable menu-bar for non-display windows
(unless (display-graphic-p nil)
  (menu-bar-mode 0))

;; scrolling
(scroll-bar-mode 0)
(setq-default mouse-wheel-scroll-amount '(4 ((shift) . 4)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 4)

;; auto-indentation via the the return key
(define-key global-map (kbd "RET") 'newline-and-indent)

;; default tab behavior
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 160 4))

;; mini window area
(setq-default max-mini-window-height 2)

;; delete trailing white space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; ================= 2.load packages and customizations ==================

;; frames
(require 'frame-mc)

;; modeline
(require 'modeline-mc)

;; color theme
(require 'basic-theme-mc)
;(require 'molokai-mc)

;; spelling configurations
(require 'spell-mc)

;; interactively do things
(require 'ido-mc)
(require 'project-mc)

;; autocomplete
(require 'autocomplete-mc)

;; lisp configurations
(require 'lisp-mc)

;; python configurations
(require 'python-mc)

;; ruby configurations
(require 'ruby-mc)

;; magit for git
(require 'magit-mc)

;; markdown configurations
(require 'markdown-mc)

;; tramp configuration
(require 'tramp-mc)


;; =================== 3.hacks ==================
;; raise frame on OsX
(when (featurep 'ns)
  (defun ns-raise-emacs ()
    "Raise Emacs."
    (ns-do-applescript "tell application \"Emacs\" to activate"))

  (defun ns-raise-emacs-with-frame (frame)
    "Raise Emacs and select the provided frame."
    (with-selected-frame frame
      (when (display-graphic-p)
        (ns-raise-emacs))))

  (add-hook 'after-make-frame-functions 'ns-raise-emacs-with-frame)

  (when (display-graphic-p)
    (ns-raise-emacs)))


;; ================== 4. Post ==================
;; clean package install file
(if (file-exists-p "~/.emacs.d/elpa-download.txt")
	(delete-file "~/.emacs.d/elpa-download.txt"))
