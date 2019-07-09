(after! deft
  (setq
    deft-directory "~/Tresor/notes"
    deft-recursive t
    deft-extensions '("md" "org" "txt")
    deft-default-extension "md"
    deft-markdown-mode-title-level 1
    deft-use-filename-as-title nil
    deft-use-filter-string-for-filename t
    deft-file-naming-rules
      '((noslash . "-")
      (nospace . "-")
      (case-fn . downcase))
    )
  )
