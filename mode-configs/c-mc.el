(defun my-c-mode-common-hook ()
  ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
  (c-set-offset 'substatement-open 0)
  ;; other customizations can go here

  ;;(setq c++-tab-always-indent t)
  (setq c-basic-offset 4)   
  (setq c-indent-level 4) 

  (setq-default tab-stop-list (number-sequence 4 160 4))
  (setq tab-width 4)
  (setq indent-tabs-mode t)  ; use spaces only if nil
  
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; package variable
(provide 'c-mc)
