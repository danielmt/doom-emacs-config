(use-package! flycheck-flow
  :after flycheck
  :config
  (add-hook! 'rjsx-mode-hook
             (push 'javascript-flow-coverage flycheck-disabled-checkers))
  (setq
   flycheck-checker-error-threshold 800)
  (flycheck-add-next-checker 'javascript-flow 'javascript-eslint)
  )

(defun flow/set-flow-executable ()
  (interactive)
  (let* ((os (pcase system-type
               ('darwin "osx")
               ('gnu/linux "linux64")
               (_ nil)))
         (root (locate-dominating-file  buffer-file-name  "node_modules/flow-bin"))
         (executable (car (file-expand-wildcards
                           (concat root "node_modules/flow-bin/*" os "*/flow")))))
    (setq-local company-flow-executable executable)
    ;; These are not necessary for this package, but a good idea if you use
    ;; these other packages
    (setq-local flow-minor-default-binary executable)
    (setq-local flycheck-javascript-flow-executable executable)))

(use-package! company-flow
  :after company
  :config
  (add-to-list 'company-backends 'company-flow)
  (add-hook 'rjsx-mode-hook #'flow/set-flow-executable t)
  )
