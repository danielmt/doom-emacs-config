(use-package! prettier-js
  :config
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  (add-hook 'typescript-tsx-mode-hook 'prettier-js-mode)
  (add-hook 'typescript-mode-hook 'prettier-js-mode)
  )
