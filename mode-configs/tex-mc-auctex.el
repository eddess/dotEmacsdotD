;; gs command on 64-bit windows
(when (string-equal system-type "windows-nt")
  (setq preview-gs-command "GSWIN64C.exe"))

;; features
(provide 'tex-mc-auctex)
