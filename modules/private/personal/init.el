; remember to install font icons:
; M-x all-the-icons-install-fonts

(if (memq window-system '(ns mac))
  ; mac customizations
  (progn
    (setq doom-font (font-spec :family "PragmataPro Mono Liga" :size 18))

    ; dark titlebar
    (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
    (add-to-list 'default-frame-alist '(ns-appearance . dark))

    (setq
      mac-option-key-is-meta t
      mac-command-key-is-meta nil
      mac-command-modifier 'super
      mac-option-modifier 'meta)
    )
  (setq
    doom-font (font-spec :family "PragmataPro Mono Liga"))
  )

(setq
  doom-theme 'doom-spacegrey

  ; no line numbers
  doom-line-numbers-style nil

  ; fix paths that are only set on zsh settings
  shell-file-name "zsh")

;; have to call it because of shell-file-name definition
(exec-path-from-shell-initialize)

(load! "+magit")
