(defun c-mc-common-mode ()
  ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
  (c-set-offset 'substatement-open 0)
  ;; other customizations can go here
  
  ;; (setq c++-tab-always-indent t)
  (setq c-basic-offset 4)                  ;; Default is 2
  (setq c-indent-level 4)                  ;; Default is 2
  
  (setq-default tab-stop-list (number-sequence 4 160 4))
  (setq tab-width 4)
  (setq indent-tabs-mode t)  ; use spaces only if nil

  ;; semantic mode
  (semantic-mode 1)
  (add-to-list 'ac-sources 'ac-source-semantic)
  )

(add-hook 'c-mode-common-hook 'c-mc-common-mode)

;; auto-complete headers
(defun c-mc-c-settings ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"C:/cygwin/usr/include")

  (require 'flycheck)
  (flycheck-mode))

(add-hook 'c-mode-hook 'c-mc-c-settings)

;; c++ settings
(defun c-mc-cpp-settings()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"C:/cygwin/usr/include")
  (add-to-list 'achead:include-directories '"C:/cygwin/lib/gcc/i686-pc-cygwin/4.8.2/include/c++")

  (require 'flycheck)
  (flycheck-mode))

(add-hook 'c++-mode-hook 'c-mc-cpp-settings)


;; package variable
(provide 'c-mc)
