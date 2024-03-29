(setq-default
   ;; custom tsserver install
   ;; tide-tsserver-executable "/home/linuxbrew/.linuxbrew/bin/tsserver"
   tide-format-options '(:indentSize 2 :indentStyle 2 :tabSize 2 :ConvertTabsToSpaces t)
  )

(after! tide
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

(setq auto-mode-alist (delete '("\\.js\\'" . js2-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
