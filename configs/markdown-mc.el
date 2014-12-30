;;; Configurations for editing markdown files
(package-install 'markdown-mode)

;; There isn't an official markdown extension so modify as needed
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(custom-set-variables
 '(markdown-command "~/bin/markdown"))

(provide 'markdown-mc)
