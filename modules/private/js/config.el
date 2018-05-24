(def-package! prettier-js
  :config
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  (setq
    prettier-js-width-mode nil
    prettier-js-args '("--print-width" "120"
                       "--single-quote"))
  )

(def-package! flycheck-flow
  :after flycheck
  :config
  (add-hook! 'rjsx-mode-hook
             (push 'javascript-flow-coverage flycheck-disabled-checkers))
  (flycheck-add-next-checker 'javascript-flow 'javascript-eslint)
  )

(load! +hooks)
