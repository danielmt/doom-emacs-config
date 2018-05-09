; highlight current code identifier

(add-hook! 'rjsx-mode-hook
  (tide-hl-identifier-mode +1))
