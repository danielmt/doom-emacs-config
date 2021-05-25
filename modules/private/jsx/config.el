(use-package! prettier-js
  :config
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  )

;(load! "+flow")
(load! "+hooks")
