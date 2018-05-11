(add-hook! 'rjsx-mode-hook
  (setq
   js2-mode-show-strict-warnings nil
   js2-mode-show-parse-errors nil
   js-indent-level 2
   js2-basic-offset 2
   js2-strict-trailing-comma-warning nil
   js2-strict-missing-semi-warning nil

   tide-format-options '(:indentSize 2 :indentStyle 2 :tabSize 2 :ConvertTabsToSpaces t)
  ; tide-tsserver-executable "/usr/local/bin/tsserver"
  )

  ; highlight current code identifier
  (tide-hl-identifier-mode +1)
  )
