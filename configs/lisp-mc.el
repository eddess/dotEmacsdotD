;; settings for editting LISP code

(ensure-installed 'company)

(defun lisp-mc-settings()
  (interactive)

  ;; autocompletion
  (company-mode t))

(add-hook 'emacs-lisp-mode-hook 'lisp-mc-settings)

(provide 'lisp-mc)
