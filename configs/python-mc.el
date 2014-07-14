;;; My settings for programming in python-mode
(require 'flymake-mc)
(require 'autocomplete-mc)
(require 'smart-tabs-mode)
(require 'elpy)

(defun python-mc-settings()
  (interactive)

    ;; elpy
  (elpy-mode t)

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
  )


;; flymake linting with pylint
(defun flymake-pylint-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "epylint" (list local-file))))


;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)

(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.py\\'" flymake-pylint-init))


(provide 'python-mc)
