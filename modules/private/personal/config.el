(after! projectile
  (setq projectile-globally-ignored-file-suffixes
        '(".elc" ".pyc" ".o" ".snap" ".ttf" ".eot" ".woff" ".woff2" ".svg" ".png" ".jpg" ".gif"))
  )

(load! "+pragmata")
(load! "+parens")
(load! "+bindings")
(load! "+magit")
