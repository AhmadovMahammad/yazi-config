# yazi config

My [Yazi](https://github.com/sxyazi/yazi) config: vim-style keys, git status, Flexoki Dark theme.

![preview](screenshots/flexoki-dark.png)

## Install

Needs [Yazi](https://github.com/sxyazi/yazi) `>= 26` and a [Nerd Font](https://www.nerdfonts.com/).

```sh
git clone https://github.com/AhmadovMahammad/yazi-config.git ~/.config/yazi
ya pkg install
```

Run `yazi`. Update plugins with `ya pkg upgrade`.

## Dependencies

`ya pkg install` only pulls the Yazi plugins and flavor from `package.toml`. The
previews, openers and search keys also need some **system programs**, installed
separately. Tested on **Ubuntu 24.04** (Wayland).

### From apt

```sh
sudo apt install fd-find ripgrep fzf zoxide neovim git p7zip-full poppler-utils ffmpeg imagemagick libimage-exiftool-perl jq mediainfo xclip wl-clipboard
```

### Installed manually

**glow** (markdown preview) is not in apt, and its snap build is sandboxed so it
cannot read `~/.config`. Use the release binary into `~/.local/bin`:

```sh
cd ~/.local/bin
wget https://github.com/charmbracelet/glow/releases/download/v2.1.2/glow_2.1.2_Linux_x86_64.tar.gz
tar xzf glow_2.1.2_Linux_x86_64.tar.gz
mv glow_2.1.2_Linux_x86_64/glow . && rm -rf glow_2.1.2_Linux_x86_64*
```

**chafa** (image-preview fallback for terminals without a graphics protocol). The
apt build is older, so use the static binary into `~/.local/bin`:

```sh
cd ~/.local/bin
wget https://hpjansson.org/chafa/releases/static/chafa-1.18.2-1-x86_64-linux-gnu.tar.gz
tar xzf chafa-1.18.2-1-x86_64-linux-gnu.tar.gz
mv chafa-1.18.2-1-x86_64-linux-gnu/chafa . && rm -rf chafa-1.18.2-1-x86_64-linux-gnu*
```

## Plugins

`full-border`, `git`, `smart-enter`, `chmod`. Installed via `ya pkg`, tracked in `package.toml`.

## Key bindings

Vim-style. The essentials below; press `~` inside Yazi for the full list.

**Navigation**

| Key | Action |
| --- | --- |
| `h` / `l` | Parent dir / enter or open |
| `j` / `k` | Down / up |
| `gg` / `G` | Top / bottom |
| `H` / `L` | History back / forward |
| `Ctrl+u` / `Ctrl+d` | Half page up / down |
| `g h` / `g c` / `g d` | Go home / config / Downloads |

**Selecting & files**

| Key | Action |
| --- | --- |
| `Space` | Toggle selection |
| `v` | Visual (select) mode |
| `y` / `x` / `p` | Copy / cut / paste |
| `d` / `D` | Trash / delete permanently |
| `a` / `r` | Create / rename |
| `o` / `O` | Open / pick an app |
| `c m` | Chmod |
| `c c` / `c f` | Copy full path / filename |
| `;` / `:` | Shell / shell (blocking) |
| `.` | Toggle hidden files |

**Find & jump**

| Key | Action |
| --- | --- |
| `/` `n` `N` | Find, next, previous |
| `f` | Filter |
| `s` / `S` | Search name (fd) / content (rg) |
| `z` / `Z` | Jump via fzf / zoxide |

**Tabs**

| Key | Action |
| --- | --- |
| `t t` | New tab |
| `1` .. `9` | Switch to tab |
| `[` / `]` | Previous / next tab |
