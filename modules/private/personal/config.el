(after! projectile
  (add-to-list 'projectile-globally-ignored-file-suffixes ".snap")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".ttf")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".eot")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".woff")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".woff2")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".svg")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".png")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".jpg")
  (add-to-list 'projectile-globally-ignored-file-suffixes ".gif")
  )

(map! :leader
      (:desc "apps" :prefix "a"
        :desc "Deft"  :nv "n" #'deft))

