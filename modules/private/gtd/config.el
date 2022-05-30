(after! org
  (setq
   org-directory "~/Tresor/notes/"
   org-roam-directory "~/Tresor/notes/roam/"
   ;; org-todo
   org-todo-keywords '((sequence "NEW(n)" "BUG(b)" "TODO(t)" "WAIT(w)" "HOLD(h)" "IDEA(i)" "|" "DONE(d)" "DELEGATED(e)" "CANCELED(c)")
                       (sequence "[ ](T)" "[-](S)" "[?](W)" "|" "[X](D)")
                       (sequence "|" "OKAY(o)" "YES(y)" "NO(n)"))

   ;; org-journal
   org-journal-dir "~/Tresor/notes/journal/"
   org-journal-file-type 'weekly
   ;; org-journal-file-format "%Y-%m"
   org-journal-file-format "%Y-%V.org")
  )

(after! deft
  (setq
   deft-directory "~/Tresor/notes/"
   deft-recursive t
   deft-extensions '("md" "org" "txt")
   deft-default-extension "md"
   deft-markdown-mode-title-level 1
   deft-use-filename-as-title t
   deft-use-filter-string-for-filename t
   deft-file-naming-rules
   '(
     (noslash . "-")
     (nospace . "-")
     (case-fn . downcase)
     )
   )
  )
