;; Undo configuration

(use-package undo-tree
  :ensure undo-tree

  :diminish undo-tree-mode

  :init (progn
		  (global-undo-tree-mode)
		  (setq undo-tree-visualizer-timestamps t)))

(provide 'undo-mc)
