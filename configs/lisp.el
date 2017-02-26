;; settings for editting LISP code

(user/load-config "company")

(defun user/lisp-settings()
  (interactive)

  ;; autocompletion
  (company-mode t))

(add-hook 'emacs-lisp-mode-hook 'user/lisp-settings)
