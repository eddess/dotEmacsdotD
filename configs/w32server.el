(server-start)

;; my delete frame function. Hides if last frame
(defun w32server/delete-a-frame (fr)
  (unless
	  (condition-case nil
		  (delete-frame fr t)
		(error nil))
	(make-frame-invisible nil t)))

;; delete every frame
(defun w32server/delete-all-frames ()
  (dolist (fr (frame-list))
	(w32server/delete-a-frame fr)))

;; Variable used to advice emacsserver to NOT quit
(defvar w32server/killFlag nil)

;; now advice emacs to query this variable when asked to kill
(defadvice kill-emacs (around w32server/killemacs activate)
  		   "Only kill emacs if killFlag is set"
  		   (if  w32server/killFlag
			   ad-do-it
			 (w32server/delete-a-frame (selected-frame))))

;; the function that will actually kill the server
(defun kill-server ()
  (interactive)
  (setq w32server/killFlag t)
  (save-buffers-kill-terminal)
  (kill-emacs))

;; function that closes all buffers before quitting
(defun w32server/kill-session-with-server-alive()
  (interactive)
  (save-some-buffers)
  ;; kill buffers without asking
  (flet ((yes-or-no-p (&rest args) t)
			(y-or-no-p (&rest args) t))
	(kill-some-buffers))
  ;; delete all frames
  (w32server/delete-all-frames))

;; binding C-xC-c to kill the current session of files before leaving
(global-set-key (kbd "C-x C-c") 'w32server/kill-session-with-server-alive)


;; Package features
(provide 'w32server)
