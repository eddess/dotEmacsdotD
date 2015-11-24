(package-install 'chruby)
(package-install 'flymake-ruby)
(package-install 'inf-ruby)
(package-install 'robe)

(eval-after-load 'company
  '(push 'company-robe company-backends))

;; rubylintrc
(setq-default flycheck-rubylintrc ".ruby-lint.yml")

(defun mc/ruby-settings()
  (interactive)

  ;; linting with flycheck
  (flycheck-mode t)

  ;; auto-completion with robe-mode
  (robe-mode t)
  (company-mode-on))

;; hooks
(add-hook 'ruby-mode-hook 'mc/ruby-settings)

(provide 'ruby-mc)
