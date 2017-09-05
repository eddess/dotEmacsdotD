(use-package spaceline

  :ensure t

  :config
  (require 'spaceline-config)
  (spaceline-emacs-theme)

  ;; Set segments to hide
  (setq spaceline-hud-p nil
		spaceline-buffer-size-p nil
		spaceline-minor-modes-p nil
		spaceline-nyan-cat-p nil
		spaceline-battery-p nil)

  ;; Highlight face
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-modified))
