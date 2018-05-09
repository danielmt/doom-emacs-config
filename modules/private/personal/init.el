; remember to install font icons:
; M-x all-the-icons-install-fonts
(setq doom-font (font-spec :family "PragmataPro Mono" :size 18))

; fix home/end on mac
(global-set-key (kbd "<home>") 'evil-beginning-of-line)
(global-set-key (kbd "<end>") 'evil-end-of-line)

