;;; Configurations for editing markdown files
(package-install 'markdown-mode)

;; There isn't an official markdown extension so modify as needed
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; hooks
;; org-table mode for markdown tables
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)

(custom-set-variables
 '(markdown-command "~/bin/markdown"))

(provide 'markdown-mc)
