# ideavim config

[IdeaVim](https://github.com/JetBrains/ideavim) config for JetBrains IDEs
(Rider, IntelliJ, etc.). This is the **full-power** setup: real IDE smarts
(go-to-definition, find-usages, rename, optimize-imports, run/debug) mapped to
the same `Space` leader as the [vim](../vim/README.md) config, so muscle memory
carries across both.

## Install

```sh
git clone https://github.com/AhmadovMahammad/my-configs.git
cp my-configs/ideavim/ideavimrc ~/.ideavimrc
```

In the IDE, reload with `:source ~/.ideavimrc` or restart. Some mappings use
IdeaVim plugins, so enable the "IdeaVim" plugin and the emulated ones load automatically
from the `set` lines.

## Plugins (emulated)

`surround`, `commentary`, `multiple-cursors`, `argtextobj`, `easymotion`,
`textobj-entire`, `ReplaceWithRegister`.

## Key bindings

Leader is `Space`. `clipboard+=unnamedplus` → yank/paste uses the system clipboard.

**Navigation & search**

| Key | Action |
| --- | --- |
| `<leader>gd` | Go to definition |
| `<leader>gi` | Go to implementation |
| `<leader>gu` | Find usages |
| `<leader>sp` | Search everywhere |
| `<leader>rf` | Recent files |
| `<leader>e` | Project tool window (file tree) |
| `]e` / `[e` | Next / previous error |
| `]m` / `[m` | Next / previous method |

**Edit & refactor**

| Key | Action |
| --- | --- |
| `<leader>rn` | Rename element |
| `<leader>fm` | Reformat code |
| `<leader>oi` | Optimize imports |
| `<leader>qa` | Show intention actions (quick fixes) |
| `<leader>w` | Save |
| `<leader>nh` | Clear search highlight |

**Run, debug & VCS**

| Key | Action |
| --- | --- |
| `<leader>rr` | Run |
| `<leader>dd` | Debug |
| `<leader>st` | Terminal tool window |
| `<leader>gc` | Git commit (checkin project) |
| `<leader>gl` | Git log |

**Windows & tabs**

| Key | Action |
| --- | --- |
| `Ctrl-h/j/k/l` | Move between splits |
| `<leader>ct` / `<leader>ca` | Close tab / all editors |
| `<leader>pt` | Pin active tab |
| `<leader>cx` | Close all unpinned editors |

**Folding**

| Key | Action |
| --- | --- |
| `<leader>zz` | Toggle fold |
| `<leader>zc` / `<leader>zo` | Collapse all / expand all regions |

**Visual mode**

| Key | Action |
| --- | --- |
| `<` / `>` | Indent, keep selection |
| `J` / `K` | Move selected lines down / up |

## Notes

- This is a **snapshot copy**; the live config is `~/.ideavimrc`.
- Mappings here that need an IDE (definitions, refactors, run/debug) intentionally
  do **not** exist in the plain [vim](../vim/README.md) config; Vim is the lean
  editor, the IDE is the heavy lifter. The shared keys are kept identical where
  Vim can do them natively (windows, folds, visual moves, `<leader>nh`, `<leader>w`).
