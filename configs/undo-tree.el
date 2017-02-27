;; Undo configuration

(use-package undo-tree
  :ensure undo-tree

  :diminish undo-tree-mode

  :init
  (global-undo-tree-mode)
  (setq undo-tree-visualizer-timestamps t))
