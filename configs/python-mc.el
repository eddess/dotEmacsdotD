;;; My settings for programming in python-mode
(require 'flymake-mc)
(require 'autocomplete-mc)
(require 'hs-mc)

;; virtual env settings
(ensure-installed 'virtualenvwrapper)
(setq venv-location "~/.virtualenvs")

(defun python-mc-settings()
  (interactive)

  ;; autocomplete
  ;;enable jedi autocompletion in python
  (setq jedi:complete-on-dot t)
  (jedi:setup)

  ;; use spaces not tabs in the python buffer
  (setq indent-tabs-mode nil)

  ;; tab width
  (setq tab-width 4)

  ;; linting with flymake
  (flymake-mode t)
  (highlight-indentation-mode 0)

  ;; hide show mode
  (hs-minor-mode t)
  )


;; flymake linting with pylint
(defun flymake-linter-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "pycheckers" (list local-file))))


;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)

(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.py\\'" flymake-linter-init))


(provide 'python-mc)
