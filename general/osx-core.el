;; Common Lisp dependency
(eval-when-compile (require 'cl))

;; Always delete frame without asking
(defun delete-this-frame()
  (interactive)
  (unless
	  (condition-case nil
		  (delete-frame (selected-frame) t)
		(error nil))
	(save-buffers-kill-emacs)))
	

;; Bind the delete frame sequence from OSX to always delete frame
(global-set-key (kbd "s-w") 'delete-this-frame)

;; package variable
(provide 'osx-core)
