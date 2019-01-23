# Introduce general.el & rewrite map! (commit 4daa9271)

- Now uses an overriding keymap for leader keys, so that it is always
  available, even outside of normal/visual states. In insert/emacs
  states, or in sessions where evil is absent, an alternative prefix is
  used for leader/localleader keys. See these variables:
  - doom-leader-prefix
  - doom-leader-alt-prefix
  - doom-localleader-prefix
  - doom-localleader-alt-prefix

- Keybinds now support alternative prefixes through the new `:alt-prefix`
  property. This is useful for non-evil users and non-normal evil
  states. By default, this is `M-SPC` (leader) and `M-SPC m` (localleader).

- Removed +evil-commands flag from config/default (moved to
  feature/evil/+commands.el).

- config/default/+bindings.el has been split into
  config/default/+{evil,emacs}-bindings.el, which one is loaded depends
  on whether evil is present or not. The latter is blank, but will soon
  be populated with a keybinding scheme for non-evil users (perhaps
  inspired by #641).

- The `define-key!` macro has been replaced; it is now an alias for
  `general-def`.

- Added `unmap!` as an alias for `general-unbind`.

- The following modifier key conventions are now enforced for
  consistency, across all OSes:
 ```
    alt/option      = meta
    windows/command = super
```

  It used to be

```
    alt/option      = alt
    windows/command = meta
```

  Many of the default keybinds have been updated to reflect this switch,
  but it is likely to affect personal meta/super keybinds!

The map! macro has also been rewritten to use general-define-key. Here
is what has been changed:

- `map!` no longer works with characters, e.g. `(map! ?x #'do-something)` is
  no longer supported. Keys must be kbd-able strings like "`C-c x`" or
  vectors like `[?C-c ?x]`.

- The `:map` and `:map*` properties are now the same thing. If specified
  keymaps aren't defined when binding keys, it is automatically
  deferred.

- The way you bind local keybinds has changed:

```
    ;; Don't do this
    (map! :l "a" #'func-a
          :l "b" #'func-b)
    ;; Do this
    (map! :map 'local "a" #'func-a
                      "b" #'func-b)
```

- `map!` now supports the following new blocks:
  - (`:if COND THEN-FORM ELSE-FORM...)`
  - (`:alt-prefix PREFIX KEYS...)` -- this prefix will be used for
    non-normal evil states. Equivalent to `:non-normal-prefix` in general.

- The way you declare a which-key label for a prefix key has changed:

```
    ;; before
    (map! :desc "label" :prefix "a" ...)
    ;; now
    (map! :prefix ("a" . "label") ...)
```

- It used to be that map! supported binding a key to a key sequence,
  like so:

```
    (map! "a" [?x])  ; pressing a is like pressing x
```

This functionality was removed *temporarily* while I figure out the
implementation.

Addresses: #448, #814, #860
Mentioned in: #940
