(use-package go-mode
  :ensure company-go
  :ensure go-mode

  :init
  (require 'go-flycheck
		   (format "%s/%s" (getenv "GOPATH") "src/github.com/dougm/goflymake") t)

  (defun user/go-settings()
	(interactive)

	;; Check file before saving
	(setq gofmt-command "goimports")
	(add-hook 'before-save-hook 'gofmt-before-save)

	;; flycheck
	(flycheck-mode t)

	;; company mode
	(set (make-local-variable 'company-backends) '(company-go))
	(company-mode t))

  ;; hooks
  (add-hook 'go-mode-hook 'user/go-settings))
