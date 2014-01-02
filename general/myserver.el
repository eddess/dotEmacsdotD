;; require core first
(require 'core)

;; Common Lisp dependency
(eval-when-compile (require 'cl))

;; Dynamic library paths in Emacs 24 folder
(defun exit-with-server-alive()
  ;; stops the emacs server from quitting
  (interactive)
  (server-edit)
  (make-frame-invisible nil t))


;; Variable used to advice emacsserver to NOT quit
(defvar myserver-killServerFlag nil)

;; now advice emacs to query this variable when asked to kill
(defadvice kill-emacs (around killServer activate)
  		   "Only kill emacs if killServerFlag is set"
  		   (if  myserver-killServerFlag
      		 ad-do-it
    		 (exit-with-server-alive)))

;; the function that will actually kill the server
(defun kill-server ()
  (interactive)
  (setq  myserver-killServerFlag t)
  (save-buffers-kill-emacs))

;; don't prompt when killing all buffers
(defadvice kill-some-buffers (around killServer activate)
  (flet ((yes-or-no-p (&rest args) t)
	 (y-or-n-p (&rest args) t))
	ad-do-it))


;; function that closes all buffers before quitting
(defun kill-session-with-server-alive()
  (interactive)
  (save-some-buffers)
  (kill-some-buffers)
  (kill-emacs))

;; binding C-xC-c to kill the current session of files before leaving
(global-set-key (kbd "C-x C-c") 'kill-session-with-server-alive)

;; package variable
(provide 'myserver)
