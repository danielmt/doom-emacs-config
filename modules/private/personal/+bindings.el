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
     )))

 ; (:after smartparens
 ;   (:map smartparens-mode-map
 ;     "C-M-d"     #'sp-splice-sexp
 ;     "C-<right>" #'sp-forward-slurp-sexp
 ;     "M-<right>" #'sp-forward-barf-sexp
 ;     "C-<left>"  #'sp-backward-slurp-sexp
 ;     "M-<left>"  #'sp-backward-barf-sexp))
