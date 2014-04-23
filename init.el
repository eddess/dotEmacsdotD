
;;; Function for path on OSX
(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

;;; default directory
(setq default-directory "~/")

;; custom file
(setq custom-file "~/.emacs.d/customizations.el")

;; load path
(add-to-list 'load-path "~/.emacs.d/configs")
(add-to-list 'load-path "~/.emacs.d/themes")

;; info path
(setq Info-default-directory-list
      (append Info-default-directory-list
	      '("~/.emacs.d/info")))

;; load packages
(dolist (file '(core
		appearance
		keymappings
		
		php-mc
		tex-mc
		c-mc
		spell-mc))
  (require file))
