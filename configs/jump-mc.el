;; makes use of ace-jump
(package-install 'ace-jump-mode)

;; prefix s-j
(global-unset-key (kbd "s-j"))

(global-set-key (kbd "s-j w") 'ace-jump-word-mode)
(global-set-key (kbd "s-j c") 'ace-jump-char-mode)
(global-set-key (kbd "s-j l") 'ace-jump-line-mode)


(provide 'jump-mc)
