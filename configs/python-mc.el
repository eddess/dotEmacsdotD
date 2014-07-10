;;; My settings for programming in python-mode
(require 'flymake-mc)
(require 'autocomplete-mc)
(require 'smart-tabs-mode)
(require 'virtualenv)
(require 'virtualenvwrapper)

(defun python-mc-settings()
  (interactive)

  ;; autocomplete
  (auto-complete-mode 1)

  ;; use spaces not tabs in the python buffer
  (setq indent-tabs-mode nil)

  ;; smart tabs
  (smart-tabs-advice python-indent-line-1 python-indent)

  ;; tab width
  (setq tab-width 4)

  ;; linting with flymake
  (flymake-mode t)
  (highlight-indentation-mode 0)

  ;; enable elpy
  (elpy-enable)
  )

;; flymake linting with pylint
(defun flymake-pylint-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "epylint" (list local-file))
    (python-virtualenv-exec
     "pylint"
     (list
      ;; Pylint args. Will depend on the checker being used.
      "-r" "n"
      "--msg-template='{path}:{line}:{category} [{msg_id} {obj}] {msg}'"
      local-file))))

(defun python-calculate-env ()
  "Calculate env variables for current python virtualenv."
  (remove-if
   (lambda (x)
     (or
      ;; If environment
      (string-match " " x)
      (not (string-match "=" x))))
   (python-shell-calculate-process-environment)))


(defun python-virtualenv-exec (command args)
  "Generate a flymake friendly list executable in virtualenv, for provided commands."
  (list "env" (append (python-calculate-env) (list command) args)))


;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)

(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.py\\'" flymake-pylint-init))

(provide 'python-mc)
