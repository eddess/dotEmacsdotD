;; Bind the delete frame sequence from OSX to always delete frame if my server running
(when (require 'myserver "dont-force.el" t)
  (global-set-key (kbd "s-w") 'delete-this-frame))

;; Bind the delete program sequence to delete all frames
(when (require 'myserver "dont-force.el" t)
  (global-set-key (kbd "s-q") 'delete-all-frames))

;; Buffer movement
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; better buffer and frame switching
(global-set-key (kbd "C-s-<left>") 'previous-buffer)
(global-set-key (kbd "C-s-<right>") 'next-buffer)
(global-set-key (kbd "C-s-<up>") 'ns-prev-frame)
(global-set-key (kbd "C-s-<down>") 'ns-next-frame)

;; open files with ido
(global-set-key (kbd "s-o") 'ido-find-file)

;; Send gui to front when run from the terminal
(if (window-system)
	(x-focus-frame nil))

;; package variable
(provide 'osx-core)
