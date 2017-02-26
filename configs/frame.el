;; frame
(use-package frame-cmds

  :demand t

  :init
  (setq-default frame-title-format '("%b"))
  (setq-default windmove-prefix "C-c w")
  (bind-key (concat windmove-prefix " <up>") 'windmove-up)
  (bind-key (concat windmove-prefix " <down>") 'windmove-down)
  (bind-key (concat windmove-prefix " <left>") 'windmove-left)
  (bind-key (concat windmove-prefix " <right>") 'windmove-right))
