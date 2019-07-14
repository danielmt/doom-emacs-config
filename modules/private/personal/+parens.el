(after! smartparens
  (sp-pair "(" ")" :wrap "C-c (")
  (sp-pair "[" "]" :wrap "C-c [")
  (sp-pair "\{" "\}" :wrap "C-c \{")
  (sp-pair "<" ">" :wrap "C-c <")
  (sp-pair "_" "_" :wrap "C-c _")
  (sp-pair "*" "*" :wrap "C-c *")
  (sp-pair "\"" "\"" :wrap "C-c \"")
  (sp-pair "`" "`" :wrap "C-c `")
  (sp-pair "\'" "\'" :wrap "C-c \'") ; conflicts with markdown
  )
