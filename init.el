;;; default directory
(setq default-directory "~/")

;; custom file
(setq custom-file "~/.emacs.d/customizations.el")

;; load-path customizations
(add-to-list 'load-path "~/.emacs.d/general")
(add-to-list 'load-path "~/.emacs.d/mode-configs")
(add-to-list 'load-path "~/.emacs.d/themes")

;; info path
(setq Info-default-directory-list
      (append Info-default-directory-list
	      '("~/.emacs.d/info")))

;; load packages
(dolist (file '(core
				appearance
				keymappings
				
				;; modular configs
				php-mc
				tex-mc))
  (require file))
