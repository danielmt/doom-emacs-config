# doom-emacs-config

my opinionated doom-emacs config.

## pre-requisites

Emacs 29.4

For a better experience consider installing:

- `fd`
- `ripgrep`
- `the_silver_searcher`
- `editorconfig`
- `discount`

## Setup and update

- Add `~/.config/emacs/bin` to `PATH`.
- For first-time setup or just sync changes to `init.el`: `doom sync`
- To upgrade doom-emacs: `doom upgrade`
- Install icons: `M-x nerd-icons-install-fonts`

### Python

Requires:

- `pyenv`
- `mypy`
- `flake8`
- `flake8-mypy`
- `flake8-comprehensions`

Run `M-x lsp-install-server RET pyright` to install Python LSP server.

### Rust

[TODO]

### Javascript/Typescript

Requires:

- `js-yaml`
- `prettier`
- `stylelint`
- `typescript`
- `tslint`

## modules

### personal

- font/theme/keybindings settings
- magit settings
- pragmata-prettify-symbols
- projectile file ignores

### js

- prettify-js on save
- tide identifier highlighting

### web

Indentation setup.

## misc

### ignores

The file `~/.ignore` can be used to define global ignores for file patterns and
is respected by `ripgrep`.
