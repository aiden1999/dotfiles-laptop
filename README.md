# Setup Instructions

## Hardware

### Touchpad
 Edit `/etc/X11/xorg.conf.d/30-touchpad.conf`:
 ```
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

```
$  xrdb -merge ~/.Xresources
```
Restart xorg for changes to take effect.

### Font

Install `ttf-jetbrains-mono-nerd`.

### Compositor

Install `picom`. Settings in `~/.config/picom/picom.conf`. Autostart managed in i3 config. Restart i3 for changes to take effect.

### Window Manager

`i3-wm` should already be installed. Settings in `~/.config/i3/config`. Restart i3 for changes to take effect.

### Bar

Install `polybar`. Settings in `~/.config/polybar`. Restart i3 for changes to take effect.

### Rofi

Install `rofi`. Settings in `~/.config/rofi`. Restart i3 for changes to take effect.

## Command Line

### AUR Helper

To install yay:
```
$   sudo pacman -S --needed git base-devel
$   git clone https://aur.archlinux.org/yay.git
$   cd yay
$   makepkg -si
```

### Git

Install `git`.
```
$    git config --global user.email "Email Address"
$    git config --global user.name "User Name"
```
Install `github-cli`. Then for GitHub authentication:
```
$    gh auth login
```

### Terminal

Install `kitty`. Settings in `~/.config/kitty/kitty.conf`.

### Shell

Install `zsh`. Settings in `~/.zshrc`. Change shell with:
```
$   chsh -s $(which zsh)
```

#### Plugins

- `zsh-autosuggestions`
- `zsh-autocomplete-git` (AUR)
- `fzf`
- `fzf-tab-git` (AUR)
- `zoxide`
- `exa`
- `zsh-syntax-highlighting`
- `starship`. Settings in `~/.config/starship.toml`
- `thefuck`

## Theming

Install `lxappearance-gtk3` for setting several settings.

### Wallpaper

Install `nitrogen` and `variety`. Nitrogen and Variety autostart with i3.

### Icons

Install `papirus-icon-theme`. Install `hardcode-fixer-git` (AUR) to fix hardcoded icons. Install `hardcode-tray` (AUR) to fix hardcoded tray icons. 
For folder colours download the latest `Papirus-Nord.tar.xz` from [https://github.com/Adapta-Projects/Papirus-Nord](Adapta-Projects/Papirus-Nord). Extract with
```
$   tar -xf Papirus-Nord.tar.xz
```
To install the icons:
```
$   sudo ./install
```
To change the folder icons:
```
$   papirus-folders -C frostblue2 --theme Papirus-Dark
```

### GTK

Download the latest `Nordic-bluish-accent-standard-buttons-v40.tar.xz` from [https://github.com/EliverLara/Nordic/releases](EliverLara/Nordic). Extract with
```
$   tar -xf Nordic-bluish-accent-standard-buttons-v40.tar.xz
```
and move
```
$   sudo mv Nordic-bluish-accent-standard-buttons-v40 /usr/share/themes/
```
Set theme with lxappearance, and change font while you're there.

### Qt

### Cursor

### Display Manager

### PLymouth

### GRUB

## Misc

- `neofetch`
- `texlive-meta`
- `thunderbird`
- `digikam`
