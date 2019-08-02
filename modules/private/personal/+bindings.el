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

     [M-left]    #'sp-beginning-of-sexp
     [M-right]   #'sp-end-of-sexp
     [M-up]      #'sp-backward-up-sexp
     [M-down]    #'sp-backward-down-sexp
     [s-down]    #'sp-down-sexp
     [s-up]      #'sp-up-sexp
     [s-left]    #'sp-backward-sexp
     [s-right]   #'sp-forward-sexp
     [M-s-right] #'sp-next-sexp
     [M-s-left]  #'sp-previous-sexp
     )))
