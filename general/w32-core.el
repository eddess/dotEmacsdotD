;; Common Lisp dependency
(eval-when-compile (require 'cl))

;; my delete frame function. Hides if last frame
(defun delete-a-frame (fr)
  (unless
	  (condition-case nil
		  (delete-frame fr t)
		(error nil))
	(make-frame-invisible nil t)))
  
;; delete every frame
(defun delete-all-frames ()
  (dolist (fr (frame-list))
	(delete-a-frame fr)))

;; Variable used to advice emacsserver to NOT quit
(defvar myserver-killFlag nil)

;; now advice emacs to query this variable when asked to kill
(defadvice kill-emacs (around killServer activate)
  		   "Only kill emacs if killFlag is set"
  		   (if  myserver-killFlag
      		 ad-do-it
    		 (delete-a-frame (selected-frame))))

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

;; Dynamic library paths in Emacs 24 folder
(setq dynamic-library-alist
      '((xpm "libXpm.dll")
	(png "libpng15-15.dll")
	(jpeg "jpeg-9.dll")
	(tiff "libtiff-5.dll")
	(gif "libgif-6.dll")
	(svg "librsvg-2-2.dll")
	(gdk-pixbuf "libgdk_pixbuf-2.0-0.dll")
	(glib "libglib-2.0-0.dll")
	(gobject "libgobject-2.0-0.dll")
	(gnutls "libgnutls-28.dll")
	(libxml2 "libxml2-2.dll")
	(zlib "zlib.dll")))

(provide 'w32-core)
