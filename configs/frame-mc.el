;; frame
(ensure-installed 'frame-cmds)
(setq-default frame-title-format '("%b"))

;; fringe sizes
(setq-default left-fringe-width 10)
(setq-default right-fringe-width 10)

(defun frame-mc-add-window-horizontally ()
  ;; add a window to the current frame with current window width
  (interactive)
  (enlarge-frame-horizontally (window-width))
  (split-window-right)
  (balance-windows)
  (other-window 0))

(defun frame-mc-delete-window-horizontally ()
  ;; remove a window and resize frame accordingly
  (interactive)
  (setq wwidth (window-width))
  (delete-window)
  (enlarge-frame-horizontally (* -1 (+ (left-fringe) () wwidth)))
  (balance-windows))


(provide 'frame-mc)
