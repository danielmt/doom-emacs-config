(def-package! prettier-js
  :config
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  (setq
    prettier-js-width-mode nil
    prettier-js-args '("--print-width" "120"
                       "--single-quote"))
  )

(load! +tide)
