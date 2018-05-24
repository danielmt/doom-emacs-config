(setq-default
   ;tide-tsserver-executable "/usr/local/bin/tsserver"
   tide-format-options '(:indentSize 2 :indentStyle 2 :tabSize 2 :ConvertTabsToSpaces t)
  )

(after! tide
  ;; tsserver still complains, even with a correct jsconfig.json, that types are only supported with .ts files
  ;(flycheck-add-mode 'javascript-tide 'rjsx-mode)
  ;(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)

  (add-hook! 'rjsx-mode-hook
    (interactive)
    (tide-setup)

    (tide-hl-identifier-mode +1)

    (setq
     js2-mode-show-strict-warnings nil
     js2-mode-show-parse-errors nil
     js-indent-level 2
     js2-basic-offset 2
     js2-strict-trailing-comma-warning nil
     js2-strict-missing-semi-warning nil

     flycheck-check-syntax-automatically '(save mode-enabled)
    ))
  )
