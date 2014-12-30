(package-install 'go-mode 'company-go)

(require 'go-flycheck (format "%s/%s"
							  (getenv "GOPATH")
							  "src/github.com/dougm/goflymake") t)

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
