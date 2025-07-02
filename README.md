# Setup Instructions

## Hardware

### Touchpad

Edit `/etc/X11/xorg.conf.d/30-touchpad.conf`:

```conf
Section "InputClass"
   Indentifier "touchpad"
   Driver "libinput"
   MatchIsTouchpad "on"
   Option "Tapping" "on"
   Option "NaturalScrolling" "true"
EndSection
```

Restart xorg for changes to take effect.

## Desktop

### Scaling

Settings in `~/.Xresources`. To load `.Xresources`:

```bash
xrdb -merge ~/.Xresources
```

Restart xorg for changes to take effect.

### Font

Install `ttf-jetbrains-mono-nerd`.
Install `noto-fonts`, `noto-fonts-extra`, `noto-fonts-cjk`, `noto-fonts-emoji`
for more compatibility

### Compositor

Install `picom`. Settings in `~/.config/picom/picom.conf`.
Autostart managed in i3 config. Restart i3 for changes to take effect.

### Window Manager

`i3-wm` should already be installed. Settings in `~/.config/i3/config`.
Restart i3 for changes to take effect.

### Bar

Install `polybar` and `pacman-contrib` for updates module. Settings in `~/.config/polybar`.
Restart i3 for changes to take effect.

### Rofi

Install `rofi`. Settings in `~/.config/rofi`. Restart i3 for changes to take effect.

### Notifications

Install `dunst`. Settings in `~/.config/dunst/`

## Command Line

### AUR Helper

To install yay:

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Git

Install `git`.

```bash
git config --global user.email "Email Address"
git config --global user.name "User Name"
```

Install `github-cli`. Then for GitHub authentication:

```bash
gh auth login
```

### Terminal

Install `kitty`. Settings in `~/.config/kitty/kitty.conf`.

### Shell

Install `zsh`. Settings in `~/.zshrc`. Change shell with:

```bash
chsh -s $(which zsh)
```

#### Plugins

- `zsh-autosuggestions`
- `zsh-autocomplete-git` (AUR)
- `fzf`
- `fzf-tab-git` (AUR) - bugged?
- `zoxide`
- `exa`
- `zsh-syntax-highlighting`
- `starship`. Settings in `~/.config/starship.toml`
- `thefuck`

### Text Editor

Install `neovim`. Config in `~/.config/nvim/`

### Pacman

In `/etc/pacman.conf` uncomment `Color` for coloured output
and add `ILoveCandy` for a cool progress bar.

#### Password Feedback

```bash
sudo visudo
```

then add the line

```text
Defaults pwfeedback
```

## Theming

Install `lxappearance-gtk3` for setting several settings.

### Wallpaper

Install `nitrogen` and `variety`. Nitrogen and Variety autostart with i3.

### Icons

Install `papirus-icon-theme`.
Install `hardcode-fixer-git` (AUR) to fix hardcoded icons.
Install `hardcode-tray` (AUR) to fix hardcoded tray icons.
For folder colours download the latest `Papirus-Nord.tar.xz`
from [https://github.com/Adapta-Projects/Papirus-Nord](Adapta-Projects/Papirus-Nord).
Extract with

```bash
tar -xf Papirus-Nord.tar.xz
```

To install the icons:

```bash
sudo ./install
```

To change the folder icons:

```bash
papirus-folders -C frostblue2 --theme Papirus-Dark
```

### GTK

Download the latest `Nordic-bluish-accent-standard-buttons-v40.tar.xz`
from [https://github.com/EliverLara/Nordic/releases](EliverLara/Nordic).
Extract with

```bash
tar -xf Nordic-bluish-accent-standard-buttons-v40.tar.xz
```

and move

```bash
sudo mv Nordic-bluish-accent-standard-buttons-v40 /usr/share/themes/
```

Set theme with lxappearance, and change font while you're there.

### Qt

### Cursor

```bash
git clone https://github.com/0jdxt/oreo-nord-cursors.git
cd oreo-nord-cursors
DBUS_SESSION_BUS_ADDRESS="" make build
sudo make install
```

### Display Manager

### Plymouth

### GRUB

## Documents and Media

### PDF Reader

Install `zathura` and PDF plugin. Settings in `~/.config/zathura/`

### Spotify Client

Install `ncspot`. Settings in `~/.config/`

## Misc

- `neofetch`
- `texlive-meta`
- `thunderbird`
- `digikam`
- `bat`
- `stylua`
