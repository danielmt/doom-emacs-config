;; MacOS specifics
(if (memq window-system '(ns mac))
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

  ; Linux will pickup best font size depending on resolution
  (setq
    doom-font (font-spec :family "PragmataPro Mono Liga"))
  )

(setq
  doom-theme 'doom-spacegrey

  ; no line numbers
  doom-line-numbers-style nil

  ; don't kill the buffer if it's removed from every(or non weak) perspective.
  persp-autokill-buffer-on-remove nil

  shell-file-name "zsh")
