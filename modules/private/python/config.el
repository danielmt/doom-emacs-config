(def-package! flycheck-mypy
  :when (featurep! :lang python)
  :when (featurep! :feature syntax-checker)
  :hook (python-mode . flycheck-mode)
  :config
  (add-hook! 'python-mode
             (setq flycheck-checker 'python-mypy))
  )
