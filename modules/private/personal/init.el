; remember to install font icons:
; M-x all-the-icons-install-fonts
(setq doom-font (font-spec :family "PragmataPro" :size 20))

; fix home/end on mac
(global-set-key (kbd "<home>") 'doom/backward-to-bol-or-indent)
(global-set-key (kbd "<end>") 'doom/forward-to-last-non-comment-or-eol)

; dark titlebar on mac
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(load! "+pragmata")
(load! "+magit")
