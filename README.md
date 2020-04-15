# doom-emacs-config

my opinionated doom-emacs config.

## pre-requisites

Emacs 26.3

For a better experience consider installing:

- `fd`
- `ripgrep`
- `the_silver_searcher`
- `editorconfig`
- `discount`

## setup and update

To setup or update installed packages, execute:

```
~/.emacs.d/bin/doom update
```

On the first run, execute: `M-x all-the-icons-install-fonts`

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

Indentation setup.

### python

Requirements:

- pyenv
- mypy
- flake8
- flake8-mypy

## misc

### ignores

The file `~/.ignore` can be used to define global ignores for file patterns and
is respected by `ripgrep`.
