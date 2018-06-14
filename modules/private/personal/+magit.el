(setq
  magit-push-always-verify nil
  magit-popup-show-common-commands nil
  magit-auto-revert-mode t
  magit-revert-buffers 1
  magit-commit-show-diff nil
  ; magit-display-buffer-function 'magit-display-buffer-fullcolumn-most-v1
  magit-diff-refine-hunk 'all
  magit-delete-by-moving-to-trash nil
  magit-revision-use-gravatar-kludge t)

(after! magit
  (setq
    git-commit-summary-max-length 999
    git-commit-fill-column 999)

  (remove-hook 'git-commit-finish-query-functions
               'git-commit-check-style-conventions)
  (remove-hook 'server-switch-hook
               'magit-commit-diff)
  (add-hook 'git-commit-setup-hook 'turn-off-auto-fill t)
  )
