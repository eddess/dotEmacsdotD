;; Bind the delete frame sequence from OSX to always delete frame if my server running
(when (require 'myserver "dont-force.el" t)
  (global-set-key (kbd "s-w") 'delete-this-frame))

;; Bind the delete program sequence to delete all frames
(when (require 'myserver "dont-force.el" t)
  (global-set-key (kbd "s-q") 'delete-all-frames))

;; package variable
(provide 'osx-core)
