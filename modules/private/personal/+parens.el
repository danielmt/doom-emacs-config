 ;;; private/personal/+parens.el -*- lexical-binding: t; -*-
(after! smartparens
    (sp-pair "(" ")" :wrap "C-c (")
    (sp-pair "[" "]" :wrap "C-c [")
    (sp-pair "{" "}" :wrap "C-c {")
    (sp-pair "<" ">" :wrap "C-c \<")
    ;; (sp-pair "'" "'" :wrap "C-c \'")
    (sp-pair "\"" "\"" :wrap "C-c \"")
    (sp-pair "`" "`" :wrap "C-c `")
    )
