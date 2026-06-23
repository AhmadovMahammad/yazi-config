# vim config

Minimal [Vim](https://www.vim.org/) setup: **no plugins, no plugin manager**, just
native Vim. Flexoki Dark theme, Space leader, auto-closing brackets, smart indent,
and real formatters (black / csharpier). Built for fast coding & LeetCode.

## Install

Needs Vim `>= 9` compiled with `+termguicolors` (for the theme) and `+clipboard`
(use `vim-gtk3` for system-clipboard yank/paste). Snapshot copy:

```sh
git clone https://github.com/AhmadovMahammad/my-configs.git
cp my-configs/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/colors ~/.vim/undo
cp my-configs/vim/colors/flexoki-dark.vim ~/.vim/colors/
```

Then install the bits the config relies on:

```sh
sudo apt install vim-gtk3      # Vim with +clipboard +termguicolors
pip install --user black      # Python formatter
dotnet tool install -g csharpier   # C# formatter (Allman style)
```

## Theme

`flexoki-dark` is a hand-written colorscheme using the official
[Flexoki](https://stephango.com/flexoki) palette by Steph Ango. Lives in
`~/.vim/colors/flexoki-dark.vim`, loaded via `colorscheme flexoki-dark`.
Needs a truecolor terminal (`set termguicolors`), with 256-color fallbacks.

## Key bindings

Leader is `Space` (same as the Rider/IdeaVim setup).

**Files & windows**

| Key | Action |
| --- | --- |
| `<leader>w` | Save file |
| `<leader>e` | Toggle file tree (netrw, built-in) |
| `<leader>st` | Open a terminal at the bottom (`Ctrl-W N` to leave, `exit` to close) |
| `<leader>rf` | Recent files (`:browse oldfiles`, pick by number) |
| `<leader>nh` | Clear search highlight |
| `Ctrl-h/j/k/l` | Move between split windows |
| `<leader>ct` / `<leader>ca` | Close current buffer / all buffers |

**Editing**

| Key | Action |
| --- | --- |
| `<leader>fm` | Format the file (Python→black, C#→csharpier, else indent-only) |
| `<leader>zz` / `zc` / `zo` | Fold: toggle / collapse all / open all |
| `]e` / `[e` | Next / previous error (quickfix) |
| `]m` / `[m` | Next / previous method (native Vim motion) |

**Visual mode**

| Key | Action |
| --- | --- |
| `<` / `>` | Indent left/right, keep selection |
| `J` / `K` | Move selected lines down / up |

## Auto-close & indent (no plugin)

- Typing `(`, `[`, `{`, `"`, `'`, `` ` `` inserts the closing pair; the cursor
  sits between them.
- Typing the closing char over an auto-added one just steps over it (no `))`).
- `{` then `Enter` expands into an indented block:
  ```
  {
      |        <- cursor here, indented one level
  }
  ```
- New lines keep the correct indent (`autoindent` + `smartindent`), never column 0.
- **Brace style is your choice:** type `(){` for K&R, or `()` → `Enter` → `{` for
  Allman (the C# default). Both work, no config switch needed.

## Formatters

`<leader>fm` runs a real formatter on the whole buffer (cursor preserved). On a
syntax error it leaves the file untouched and warns.

| Filetype | Tool | Install |
| --- | --- | --- |
| `python` | [black](https://github.com/psf/black) | `pip install --user black` |
| `cs` | [csharpier](https://csharpier.com) | `dotnet tool install -g csharpier` |
| other | Vim's `gg=G` (indent only) | built-in |

## Notes

- This is a **snapshot copy**. The live config is `~/.vimrc` +
  `~/.vim/colors/`. Editing those does not auto-update this repo, so copy back when
  you change something worth keeping.
- No LSP: go-to-definition, find-usages, rename, optimize-imports etc. are *not*
  here by design; that power lives in the [ideavim](../ideavim/README.md) (Rider)
  setup. This Vim is the lean, fast editor.
