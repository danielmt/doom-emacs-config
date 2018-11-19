# doom-emacs-config

my opinionated doom-emacs config.

## setup

This config is being used on Emacs 26.1 (railwaycat/emacsmacport/emacs-mac).

- on ~/.emacs.d: `make`
- Once running: `M-x all-the-icons-install-fonts`

## update all packages and plugins

- on ~/.emacs.d:

```
make clean && make update && make && make compile-core
bin/doom compile :plugins
```

## modules

### personal

- font/theme/keybindings settings
- magit settings
- pragmata-prettify-symbols
- projectile file ignores

### gtd

- deft support

### js

Adds a little oomph to javascript.

- prettify-js on save
- tide identifier highlighting
- flow support

### web

Redefines indentation.
