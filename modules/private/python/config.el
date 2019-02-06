(def-package! flycheck-mypy
  :after flycheck
  :config
  (add-hook 'python-mode-hook 'flycheck-mode)
  )
