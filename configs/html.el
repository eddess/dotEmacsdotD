;;; Eddy Essien
;;; Configs for dealing with web technologies

(user/load-config "company")

;; function that does the loading and configuring of web-mode for php
(defun user/html-settings ()
  (interactive)
  (web-mode)
  (company-mode t))


(add-to-list 'auto-mode-alist
	     '("\\.html\\'" . user/html-settings))
