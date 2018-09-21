; remember to install font icons:
; M-x all-the-icons-install-fonts
(setq doom-font (font-spec :family "PragmataPro Mono Liga" :size 20))
(setq doom-theme 'doom-nord)

; no line numbers
(setq doom-line-numbers-style nil)

; mac customizations
(when (memq window-system '(ns mac))
  ; dark titlebar
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))

  (setq
    mac-option-key-is-meta nil
    mac-command-key-is-meta t
    mac-command-modifier 'meta
    mac-option-modifier nil)
  )

(load! "+magit")
