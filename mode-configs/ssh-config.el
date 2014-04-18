(defun ssh-config-initialize ()
  (interactive)
  (when (require 'ssh-config-mode "~/.emacs.d/apps/ssh-config-mode/ssh-config-mode.el" t)
	(ssh-config-mode)))
	  
;; ssh files
(add-to-list 'auto-mode-alist
			 '(".ssh/config\\'"  . ssh-config-initialize))

(add-to-list 'auto-mode-alist
			 '("sshd?_config\\'" . ssh-config-initialize))

(add-hook 'ssh-config-mode-hook
		  'turn-on-font-lock)

(provide 'ssh-config)
