(def-package! deft
  :config
  (setq
    deft-directory "~/Tresor/notes"
    deft-extensions '("org" "md" "txt")
    deft-default-extension "org"
    deft-recursive t
    deft-use-filename-as-title nil
    deft-use-filter-string-for-filename t
    deft-file-naming-rules
      '((noslash . "-")
      (nospace . "-")
      (case-fn . downcase))
    )
  )
