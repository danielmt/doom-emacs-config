(map!
 [home]     #'doom/backward-to-bol-or-indent
 [end]      #'doom/forward-to-last-non-comment-or-eol

 ;; fix this, not working after general.el rewrite
 [M-return] #'toggle-frame-fullscreen

 (:after smartparens
   (:map smartparens-mode-map
     [C-M-a]   #'sp-beginning-of-sexp
     [C-M-e]   #'sp-end-of-sexp
     [C-M-f]   #'sp-forward-sexp
     [C-M-b]   #'sp-backward-sexp
     [C-M-k]   #'sp-kill-sexp
     [C-M-t]   #'sp-transpose-sexp

     [s-down]  #'sp-down-sexp
     [s-up]    #'sp-up-sexp
     [M-left]  #'sp-beginning-of-sexp
     [M-right] #'sp-end-of-sexp
     [M-up]    #'sp-backward-symbol
     [M-down]  #'sp-forward-symbol

    ;; FIXME single-quote, underscore and angle-bracket not working
     "C-c ("   #'wrap-with-parens
     "C-c ["   #'wrap-with-brackets
     "C-c {"   #'wrap-with-braces
     "C-c '"   #'wrap-with-single-quotes
     "C-c \""  #'wrap-with-double-quotes
     "C-c `"   #'wrap-with-back-quotes
     "C-c _"   #'wrap-with-underscores
     "C-c <"   #'wrap-with-angle-brackets)))

 ; (:after smartparens
 ;   (:map smartparens-mode-map
 ;     "C-M-d"     #'sp-splice-sexp
 ;     "C-<right>" #'sp-forward-slurp-sexp
 ;     "M-<right>" #'sp-forward-barf-sexp
 ;     "C-<left>"  #'sp-backward-slurp-sexp
 ;     "M-<left>"  #'sp-backward-barf-sexp))
