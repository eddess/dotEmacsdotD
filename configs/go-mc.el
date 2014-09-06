(ensure-installed 'go-mode 'company-go)

(add-to-list 'load-path
			 (format "%s/%s"
					 (getenv "GOPATH")
					 "src/github.com/dougm/goflymake"))

(require 'go-flycheck)

(defun go-mc-settings()
  (interactive)

  ;; gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  ;; flycheck
  (flycheck-mode t)

  ;; company mode
  (set (make-local-variable 'company-backends) '(company-go))
  (company-mode t)
  )

;; hooks
(add-hook 'go-mode-hook 'go-mc-settings)

;; package variable
(provide 'go-mc)
