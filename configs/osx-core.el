;; Get environment path
;; (setq test-str (shell-command-to-string "launchctl getenv PATH"))
;; (when (string-match "[ \n]*$" test-str)
;; (setq test-str (concat  (replace-match "" nil nil test-str) )))

;; (setenv "PATH" test-str)
;; (setq-default exec-path (append exec-path (split-string test-str ":")))

;; fonts
(when (window-system)
  (set-face-attribute 'default nil :font "Monaco-12"))

;; Buffer movement
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; File open
(global-set-key (kbd "s-o") 'find-file)

;; tramp
(setq tramp-default-method "ssh")

;; package variable
(provide 'osx-core)
