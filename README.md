# yazi config

My personal [Yazi](https://github.com/sxyazi/yazi) file manager config: vim-style keys, git status in the list, and the Flexoki Dark theme.

By [@AhmadovMahammad](https://github.com/AhmadovMahammad)

![preview](screenshots/flexoki-dark.png)

## What's inside

| Path | Purpose |
| --- | --- |
| `yazi.toml` | Manager, preview, opener, plugin (incl. git fetcher) settings |
| `keymap.toml` | Key bindings (vim-style) |
| `theme.toml` | Active flavor selection |
| `init.lua` | Plugin setup (git, full-border) |
| `package.toml` | Plugins & flavors manifest, managed by `ya pkg` |

`plugins/` and `flavors/` are **not** committed; they are restored from `package.toml`.

## Install

Requires [Yazi](https://github.com/sxyazi/yazi) `>= 26` (gives you the `ya` CLI).

```sh
# back up an existing config first, if any
mv ~/.config/yazi ~/.config/yazi.bak 2>/dev/null

git clone https://github.com/AhmadovMahammad/yazi-config.git ~/.config/yazi

# fetch the plugins and flavors listed in package.toml
ya pkg install
```

Then run `yazi`. That's it: `init.lua`, `keymap.toml`, `theme.toml` all load
automatically from `~/.config/yazi`, no extra activation step.

For file icons to render, use a [Nerd Font](https://www.nerdfonts.com/) in your
terminal (e.g. FiraCode Nerd Font).

### Update plugins & flavors

```sh
ya pkg upgrade
```

## Plugins

All installed via `ya pkg` and recorded in `package.toml`.

| Plugin | Key | Does |
| --- | --- | --- |
| [full-border](https://github.com/yazi-rs/plugins) | auto | Rounded border around the UI |
| [git](https://github.com/yazi-rs/plugins) | auto | Git status signs in the file list |
| [smart-enter](https://github.com/yazi-rs/plugins) | `l` | Enter a directory, or open a file |
| [chmod](https://github.com/yazi-rs/plugins) | `c m` | Interactive chmod on the selection |

## Flavor

Uses [Flexoki Dark](https://github.com/gosxrgxx/flexoki-dark), set in `theme.toml`:

```toml
[flavor]
dark  = "flexoki-dark"
light = "flexoki-dark"
```

## Key bindings (highlights)

Mostly default Yazi vim-style keys. Notable:

| Key | Action |
| --- | --- |
| `h` / `l` | Parent dir / enter or open (smart-enter) |
| `j` / `k` | Down / up |
| `gg` / `G` | Top / bottom |
| `y` / `x` / `p` | Copy / cut / paste |
| `d` / `D` | Trash / delete permanently |
| `a` / `r` | Create / rename |
| `c m` | Chmod |
| `.` | Toggle hidden files |
| `s` / `S` | Find by name (fd) / content (rg) |
| `z` / `Z` | Jump via fzf / zoxide |

Full list: press `~` or `F1` inside Yazi.

## Optional dependencies

Used by the previewers and some key bindings. On Debian/Ubuntu:

```sh
sudo apt install fd-find ripgrep fzf zoxide neovim git p7zip-full \
  poppler-utils ffmpeg imagemagick libimage-exiftool-perl chafa jq mediainfo
```

- `fd` / `ripgrep`: `s` / `S` search
- `fzf` / `zoxide`: `z` / `Z` jump
- `chafa`: image preview in terminals without a graphics protocol
- `poppler-utils`, `ffmpeg`, `imagemagick`: PDF, video, image previews
- `exiftool`, `mediainfo`: metadata in the open menu
