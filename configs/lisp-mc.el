;; settings for editting LISP code

(defun lisp-mc-settings()
  (interactive)

  ;; turn on autocomplete
  (auto-complete-mode 1))

(add-hook 'emacs-lisp-mode-hook 'lisp-mc-settings)

(provide 'lisp-mc)

