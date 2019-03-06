; remember to install font icons:
; M-x all-the-icons-install-fonts
(setq doom-font (font-spec :family "PragmataPro Mono Liga" :size 18))
(setq doom-theme 'doom-spacegrey)

(setq shell-file-name "zsh")

; no line numbers
(setq doom-line-numbers-style nil)

; mac customizations
(when (memq window-system '(ns mac))
  ; dark titlebar
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))

  (setq
    mac-option-key-is-meta t
    mac-command-key-is-meta nil
    mac-command-modifier 'super
    mac-option-modifier 'meta)
  )

(load! "+magit")
