;; frame
(package-install 'frame-cmds)
(setq-default frame-title-format '("%b"))

;; Toggle between split windows and a single window
(defun toggle-windows-split()
  (interactive)
  (if (not (window-minibuffer-p (selected-window)))
      (progn
        (if (< 1 (count-windows))
            (progn
              (window-configuration-to-register ?u)
              (delete-other-windows))
          (jump-to-register ?u))))
  (my-iswitchb-close))

(defun my-iswitchb-close()
 (interactive)
 (if (window-minibuffer-p (selected-window))
	 (keyboard-escape-quit)))

;; window movement bindings
(setq-default windmove-prefix "C-c w")
(global-set-key (kbd (concat windmove-prefix " <up>")) 'windmove-up)
(global-set-key (kbd (concat windmove-prefix " <down>")) 'windmove-down)
(global-set-key (kbd (concat windmove-prefix " <left>")) 'windmove-left)
(global-set-key (kbd (concat windmove-prefix " <right>")) 'windmove-right)

;; window split zoom
(define-key global-map (kbd "C-|") 'toggle-windows-split)

(provide 'frame-mc)
