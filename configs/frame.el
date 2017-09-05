(defun user/switch-to-minibuffer()
  "Switch to minibuffer if active"
  (interactive)
  (when (active-minibuffer-window)
	(select-frame-set-input-focus (window-frame (active-minibuffer-window)))
	(select-window (active-minibuffer-window))))

(use-package winum
  :ensure t

  :init
  ;; Prevent winum from setting a number in the modeline as that is handled
  ;; in the modeline config
  (setq winum-auto-setup-mode-line nil)
  (setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "C-`") 'winum-select-window-by-number)
      (define-key map (kbd "C-1") 'winum-select-window-1)
      (define-key map (kbd "C-2") 'winum-select-window-2)
      (define-key map (kbd "C-3") 'winum-select-window-3)
      (define-key map (kbd "C-4") 'winum-select-window-4)
      (define-key map (kbd "C-5") 'winum-select-window-5)
      (define-key map (kbd "C-6") 'winum-select-window-6)
      (define-key map (kbd "C-7") 'winum-select-window-7)
      (define-key map (kbd "C-8") 'winum-select-window-8)
	  (define-key map (kbd "C-9") 'winum-select-window-9)
	  (define-key map (kbd "C-0") 'user/switch-to-minibuffer)
      map))

  :config
  (winum-mode))
