;;; My settings for programming in python-mode
(ensure-installed 'company-anaconda 'anaconda-mode)
(require 'hs-mc)

;; virtual env settings
(ensure-installed 'virtualenvwrapper 'flycheck)
(setq venv-location "~/.virtualenvs")


(defun python-mc-settings()
  (interactive)

  ;; completion
  (delete 'company-ropemacs company-backends)
  (anaconda-mode t)
  (add-to-list 'company-backends 'company-anaconda)
  (add-to-list 'company-backends 'company-capf)
  (company-mode t)

  ;; use spaces not tabs in the python buffer
  (setq indent-tabs-mode nil)

  ;; tab width
  (setq tab-width 4)

  ;; linting with flymake
  (flycheck-mode t)
  (flycheck-select-checker 'python-pylint)

  ;; hide show mode
  (hs-minor-mode t)
  )

;; Flycheck custom linter
(setq-default flycheck-python-pylint-executable "pycheckers")

;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)

(provide 'python-mc)
