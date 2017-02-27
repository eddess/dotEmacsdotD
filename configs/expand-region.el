(use-package expand-region
  :ensure t
  :init
  (require 'expand-region-core)
  (bind-key "C-c e e"    'er/expand-region)
  (bind-key "C-c e w"    'er/mark-word)
  (bind-key "C-c e m"    'er/mark-method-call)
  (bind-key "C-c e i p"  'er/mark-inside-pairs)
  (bind-key "C-c e o p"  'er/mark-outside-pairs)
  (bind-key "C-c e i q"  'er/mark-inside-quotes)
  (bind-key "C-c e o q"  'er/mark-outside-quotes))

(provide 'configs/expand-region)
