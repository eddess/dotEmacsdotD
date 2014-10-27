;; frame
(ensure-installed 'frame-cmds)
(setq-default frame-title-format '("%b"))

(defun frame-mc-add-window-horizontally ()
  ;; add a window to the current frame with current window width
  (interactive)
  (enlarge-frame-horizontally (+ (window-width) 4))
  (split-window-right)
  (balance-windows)
  (other-window 0))

(defun frame-mc-delete-window-horizontally ()
  ;; remove a window and resize frame accordingly
  (interactive)
  (setq wwidth (window-width))
  (delete-window)
  (enlarge-frame-horizontally (* -1 (+ wwidth 4)))
  (balance-windows))


(global-set-key (kbd "C-s-<up>") 'windmove-up)
(global-set-key (kbd "C-s-<down>") 'windmove-down)
(global-set-key (kbd "C-s-<left>") 'windmove-left)
(global-set-key (kbd "C-s-<right>") 'windmove-right)

;; OsX
(global-set-key (kbd "C-s-<268632065>") 'frame-mc-add-window-horizontally)
(global-set-key (kbd "C-s-<268632075>") 'frame-mc-delete-window-horizontally)

;; Windows (and linux?)
(global-set-key (kbd "C-s-a") 'frame-mc-add-window-horizontally)
(global-set-key (kbd "C-s-k") 'frame-mc-delete-window-horizontally)

(global-set-key (kbd "C-M-s-<left>") 'ns-prev-frame)
(global-set-key (kbd "C-M-s-<right>") 'ns-next-frame)

(provide 'frame-mc)
