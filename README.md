# my-configs

My personal dotfiles. One theme, one set of keys, across everything I use.

**Philosophy:** minimal, only what I actually use, no bloat. Vim-style keys with
`Space` as leader. [Flexoki Dark](https://stephango.com/flexoki) theme everywhere.
Every config documented so future-me knows why each line exists.

## What's inside

| Config | What it is | Docs |
| --- | --- | --- |
| [`vim/`](vim/README.md) | Minimal Vim: no plugins, native auto-pairs, real formatters | [README](vim/README.md) |
| [`ideavim/`](ideavim/README.md) | IdeaVim for Rider/IntelliJ: full IDE power, same keys | [README](ideavim/README.md) |
| [`yazi/`](yazi/README.md) | [Yazi](https://github.com/sxyazi/yazi) file manager: git status, previews | [README](yazi/README.md) |

```
my-configs/
├── vim/            ~/.vimrc + ~/.vim/colors/
├── ideavim/        ~/.ideavimrc
├── yazi/           ~/.config/yazi/
└── README.md
```

## The two editors

- **vim** is the lean, fast editor for coding, LeetCode, quick edits. No LSP by design.
- **ideavim** is the heavy lifter inside Rider: go-to-definition, refactors,
  run/debug. The `Space`-leader keys are kept identical wherever Vim can do the
  same thing natively, so switching between them is seamless.

## Install

Each folder has its own install steps in its README. In short: these are
**snapshot copies**, so installing means copying a folder's files into the live
location (`~/.vimrc`, `~/.ideavimrc`, `~/.config/yazi/`).

## Note

This repo stores snapshots, not symlinks, so editing the live config files does not
auto-update the repo. Copy changes back when they're worth keeping.

## License

[MIT](LICENSE) © Mahammad Ahmadov
