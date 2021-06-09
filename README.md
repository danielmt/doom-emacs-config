# doom-emacs-config

my opinionated doom-emacs config.

## pre-requisites

Emacs 27.2

For a better experience consider installing:

- `fd`
- `ripgrep`
- `the_silver_searcher`
- `editorconfig`
- `discount`

## Setup and update

- Add `~/.emacs.d/bin` to `PATH`.
- For first-time setup or just sync changes to `init.el`: `doom sync`
- To upgrade doom-emacs: `doom upgrade`
- Install icons: `M-x all-the-icons-install-fonts`

### Python

Requires:

- pyenv
- mypy
- flake8
- flake8-mypy
- flake8-comprehensions

Run `M-x lsp-install-server RET mspyls` to install Python lsp server.

### Rust

[TODO]

### Javascript/Typescript

Requires:

- `js-yaml`
- `prettier`
- `stylelint`
- `typescript`
- `tslint`

### C/C++

Requires:

- `rtags`
- `llvm`
- `llvm-devel`

Run `M-x irony-install-server` after dependencies are installed, and re-open file.

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
