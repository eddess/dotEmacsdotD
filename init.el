;; ===================== 0. Personal =================
(setq user/name "Eddy Essien"
	  user/email "eddy.essien@gmail.com")

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
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(package-install 'use-package)
(require 'use-package)

;; info path
(setq Info-default-directory-list
      (append Info-default-directory-list
			  '("~/.emacs.d/info")))

;; disable autosaves and backups. This ain't 197-something anymore
(setq-default backup-inhibited t)
(setq-default auto-save-default nil)
(setq create-lockfiles nil)

;; yes-or-no bound to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; CUA mode
(cua-mode nil)

;; disable the bell
(setq ring-bell-function 'ignore)

;; better handling of large file scrolling
;(setq jit-lock-defer-time 0.01)

;; allow mouse in terminal
(xterm-mouse-mode t)

;; frame title
(setq frame-title-format
      '("Emacs - " (buffer-file-name "%f"
				     (dired-directory dired-directory "%b"))))

;; cursor
(setq cursor-type 'bar)
(blink-cursor-mode 0)

;; default window in GUI mode
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 28))

;; column numbers
(column-number-mode t)

;; Disable the tool bar
(if (functionp 'tool-bar-mode)
  (tool-bar-mode 0))
;; hide menu bar
(menu-bar-mode 0)

;; scrolling
(if (functionp 'scroll-bar-mode)
  (scroll-bar-mode 0))
(setq-default mouse-wheel-scroll-amount '(4 ((shift) . 4)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 4)

;; default indentation
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 160 4))
(define-key text-mode-map (kbd "<tab>") 'tab-to-tab-stop)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; delete trailing white space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; sentences end with a single space
(setq sentence-end-double-space nil)

;; UTF-8
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; history related configs

(setq savehist-file "~/.emacs.d/savehist")

(setq savehist-additional-variables
	  '(kill-ring
		search-ring
		regexp-search-ring))

(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)

(savehist-mode 1)

;; ================= 2.load packages and customizations ==================

(defun user/load-theme (theme)
  (load-library (concat "~/.emacs.d/themes/" theme ".el")))

(defun user/load-config (config)
  (load-library (concat "~/.emacs.d/configs/" config ".el")))


;; OS settings
(cond
 ((string-equal system-type "windows-nt") (user/load-config "win64"))
 ((string-equal system-type "darwin") (user/load-config "osx-core")))

;; Expand region
(user/load-config "expand-region")

;; jump functions
(user/load-config "ace-jump")

;; Frame Functions
(user/load-config "frame")

;; VIML Emulation
(user/load-config "evil")

;; Modeline
(user/load-config "modeline")

;;undo-tree
(user/load-config "undo-tree")

;; interactively do things
(user/load-config "interactive")

;; project configuration
(user/load-config "project")

;; lisp configurations
(user/load-config "lisp")

;; magit for git
(user/load-config "git")

;; Org-mode
(user/load-config "org-mode")

;; python configurations
(user/load-config "python")

;; markdown configurations
(user/load-config "markdown")

;; Html files
(user/load-config "html")

;; Golang
(user/load-config "go")


;; Color theme
(user/load-theme "light-theme")




;; ================== 3. Post ==================
;; clean package install file
(if (file-exists-p "~/.emacs.d/elpa-download.txt")
	(delete-file "~/.emacs.d/elpa-download.txt"))
