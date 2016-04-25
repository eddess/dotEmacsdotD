;; makes use of ace-jump
(package-install 'ace-jump-mode)

;; prefix C-c j
(global-unset-key (kbd "C-c j"))

(global-set-key (kbd "C-c j w") 'ace-jump-word-mode)
(global-set-key (kbd "C-c j c") 'ace-jump-char-mode)
(global-set-key (kbd "C-c j l") 'ace-jump-line-mode)


(provide 'jump-mc)
