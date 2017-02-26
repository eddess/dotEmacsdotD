;; My modeline configuration
;; a simple but awesome modeline

(defun mc/modeline-file-identification ()
  "Return an identificaton of the file in buffer"
  (setq result "")
  ;; Get project via projectile
  (when (require 'projectile nil :noerror)
	(setq project (projectile-project-name))
	(unless (string-equal project "-")
	  (setq result (concat "<" project "> "))))

  ;; Buffer identification
  (setq result (concat result (buffer-name) " [" (symbol-name major-mode) "]"))
  result)

(defun mc/modeline-vc ()
  "Return version control information"
  (setq result " ")
  (unless (equal (vc-backend buffer-file-name) nil)
	(setq result (concat
				  (symbol-name (vc-backend buffer-file-name))
				  ":"
				  (vc-working-revision buffer-file-name))))
  (concat result " ")
  result)

(defun mc/modeline ()
  "Return a formatted modeline string for the buffer"

  (setq buf-width (window-width))
  (setq min-padding 10)

  ;; Get the identification section
  (setq file-id (mc/modeline-file-identification))
  (setq file-id-length (length file-id))

  ;; Get the vc section
  (setq vc-section (mc/modeline-vc))
  (setq vc-section-length (length vc-section))

  (if (>= (- buf-width (+ file-id-length vc-section-length)) (* 2 min-padding))
	  (progn
		(setq padding (/ (- buf-width (+ file-id-length vc-section-length)) 2))
		(setq part-1 (format (format "%%-%ss" padding) e-state))
		(setq part-2 (format (format "%%-%ss" (+ file-id-length padding)) file-id))
		(setq left-over (- buf-width padding file-id-length padding))
		(setq part-3 (format (format "%%%ss" left-over) vc-section))
		)
	nil)

  (concat "  " part-1 part-2 part-3))


(setq evil-mode-line-format 'off)

(setq-default mode-line-format
			  '(" "
				mode-line-buffer-identification
				(vc-mode vc-mode)
				"   "
				mode-line-modes
				"   "
				mode-line-position))
