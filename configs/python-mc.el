;;; My settings for programming in python-mode
(require 'autocomplete-mc)
(require 'hs-mc)

;; virtual env settings
(ensure-installed 'virtualenvwrapper 'jedi 'flycheck)
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
  (flycheck-select-checker 'python-pylint)
  (flycheck-mode t)

  ;; hide show mode
  (hs-minor-mode t)
  )

;; Flycheck custom linter
(setq-default flycheck-python-pylint-executable "pycheckers")

;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)

(provide 'python-mc)
