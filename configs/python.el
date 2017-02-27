;;; My settings for programming in python-mode
(user/load-config "company")

(use-package company-anaconda
  :ensure t)
(use-package anaconda-mode
  :ensure t)

;; virtual env settings
(package-install 'virtualenvwrapper)
(package-install 'flycheck)
(setq venv-location "~/.virtualenvs")

;; use ipython as interpreter
(setq python-shell-interpreter "ipython")

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

  ;; linting with flycheck
  (flycheck-mode t)
  (flycheck-select-checker 'python-pylint))

;; Flycheck custom linter
(setq-default flycheck-python-pylint-executable "pycheckers")

;; hooks
(add-hook 'python-mode-hook 'python-mc-settings)


;; === Python Web programming ===
(defun flask-html-initialize ()
  (interactive)
  (web-mode)
  (web-mode-set-engine "django")
  (company-mode t))

(add-to-list 'auto-mode-alist '("\\.flhtml\\'" . flask-html-initialize))
