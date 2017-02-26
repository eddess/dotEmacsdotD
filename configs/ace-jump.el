;; makes use of ace-jump
(use-package ace-jump-mode
  :ensure t

  :init (progn
		  (setq-default usr/ace-prefix "C-c j")

		  (global-unset-key (kbd usr/ace-prefix))

		  (global-set-key ( kbd (concat usr/ace-prefix " w")) 'ace-jump-word-mode)
		  (global-set-key (kbd (concat usr/ace-prefix " c")) 'ace-jump-char-mode)
		  (global-set-key (kbd (concat usr/ace-prefix " l")) 'ace-jump-line-mode)))
