;; My modeline configuration
;; a simple but awesome modeline

(defun mc/modeline-evil-state ()
  "Return the current evil-mode state if evil installed"
  (setq state "")
  (when (require 'evil nil :noerror)
	(cond
	 ((evil-emacs-state-p) (setq state "EMACS"))
	 ((evil-normal-state-p) (setq state "NORMAL"))
	 ((evil-insert-state-p) (setq state "INSERT"))
	 ((evil-operator-state-p) (setq state "OPER"))
	 ((evil-visual-state-p)
	  (pcase (evil-visual-type evil-visual-selection)
	   (`line (setq state "V.LINE"))
	   (`block (setq state "V.BLOCK"))
	   (`inclusive (setq state "VISUAL"))))
	 (t (setq state "NO-OP"))))
  state)

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

  ;; Get evil section
  (setq e-state (mc/modeline-evil-state))
  (setq e-state-length (length e-state))

  ;; Get the identification section
  (setq file-id (mc/modeline-file-identification))
  (setq file-id-length (length file-id))

  ;; Get the vc section
  (setq vc-section (mc/modeline-vc))
  (setq vc-section-length (length vc-section))

  (if (>= (- buf-width (+ e-state-length file-id-length vc-section-length)) (* 2 min-padding))
	  (progn
		(setq padding (/ (- buf-width (+ e-state-length file-id-length vc-section-length)) 2))
		(setq part-1 (format (format "%%-%ss" (+ e-state-length padding)) e-state))
		(setq part-2 (format (format "%%-%ss" (+ file-id-length padding)) file-id))
		(setq left-over (- buf-width e-state-length padding file-id-length padding))
		(setq part-3 (format (format "%%%ss" left-over) vc-section))
		)
	nil)

  (concat "  " part-1 part-2 part-3))


(setq-default mode-line-format '((:eval (mc/modeline))))

(provide 'modeline-mc)
