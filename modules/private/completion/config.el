(def-package! flx
  :config
  ;(setq ivy-re-builders-alist
  ;    '((t . ivy--regex-fuzzy)))
  (setq ivy-re-builders-alist
        '((ivy-switch-buffer . ivy--regex-plus)
          (t . ivy--regex-fuzzy)))
  )

