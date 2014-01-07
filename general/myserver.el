;; Start the emacs server process if not on Windows. Windows auto starts it
(unless (string-equal system-type "windows-nt")
  (server-start))

;; Common Lisp dependency
(eval-when-compile (require 'cl))

;; my delete frame function. Hides if last frame
(defun delete-a-frame (fr)
  (unless
	  (condition-case nil
		  (delete-frame fr t)
		(error nil))
	(make-frame-invisible nil t)))

;; custom delete frame
(defun delete-this-frame ()
  (interactive)
  (delete-a-frame (selected-frame)))
  
;; delete every frame
(defun delete-all-frames ()
  (interactive)
  (dolist (fr (frame-list))
	(delete-a-frame fr)))

;; Variable used to advice emacsserver to NOT quit
(defvar myserver-killFlag nil)

;; now advice emacs to query this variable when asked to kill
(defadvice kill-emacs (around killServer activate)
  		   "Only kill emacs if killFlag is set"
  		   (if  myserver-killFlag
      		 ad-do-it
    		 (delete-this-frame)))

;; the function that will actually kill the server
(defun kill-server ()
  (interactive)
  (setq  myserver-killFlag t)
  (save-buffers-kill-emacs))

;; function that closes all buffers before quitting
(defun kill-session-with-server-alive()
  (interactive)
  (save-some-buffers)
  ;; kill buffers without asking
  (flet ((yes-or-no-p (&rest args) t)
			(y-or-no-p (&rest args) t))
	(kill-some-buffers))
  ;; delete all frames
  (delete-all-frames))

;; binding C-xC-c to kill the current session of files before leaving
(global-set-key (kbd "C-x C-c") 'kill-session-with-server-alive)


;; Package features
(provide 'myserver)
