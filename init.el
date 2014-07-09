
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

;; load path
(add-to-list 'load-path "~/.emacs.d/configs")
(add-to-list 'load-path "~/.emacs.d/themes")

;; info path
(setq Info-default-directory-list
      (append Info-default-directory-list
			  '("~/.emacs.d/info")))


;; load packages and customizations
(require 'core)
(require 'keymappings)

;; spelling configurations
(require 'spell-mc)

;; python configurations
(require 'python-mc)



;; raise frame
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
