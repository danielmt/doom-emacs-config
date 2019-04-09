# doom-emacs-config

my opinionated doom-emacs config.

## setup

This config is being used on Emacs 26.1 (railwaycat/emacsmacport/emacs-mac).

- Install emacs-mac with: `--with-modules --with-xml2 --with-natural-title-bar --with-modern-icon --with-gnutls --with-imagemagick`
- on ~/.emacs.d: `make`
- Once running: `M-x all-the-icons-install-fonts`

General requirements:

- discount
- editorconfig
- ripgrep
- the_silver_searcher

## update all packages and plugins

- on ~/.emacs.d:

```
make clean && make update && make 
bin/doom compile :plugins && && make compile-core
```

## modules

### personal

- font/theme/keybindings settings
- magit settings
- pragmata-prettify-symbols
- projectile file ignores

### js

Adds a little oomph to javascript.

- prettify-js on save
- tide identifier highlighting
- flow support

Requirements:

- flow-bin
- flow-typed
- js-yaml
- prettier
- stylelint
- typescript
- tslint

### web

Redefines indentation.

### python

Requirements:

- pyenv
- mypy
- flake8
- flake8-mypy


flake8 and flake8-mypy needs to be installed in the used pyenv python version for the project.
