;; Sets the exec-path to the same value used by the user shell"
(let ((path-from-shell
       (replace-regexp-in-string
	"[[:space:]\n]*$" ""
	(shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
  (setenv "PATH" path-from-shell)
  (setq exec-path (split-string path-from-shell path-separator)))

;; fonts
(when (window-system)
  (set-face-attribute 'default nil :font "Monaco-12"))

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

;; package variable
(provide 'osx-core)
