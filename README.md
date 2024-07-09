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

## Terminal

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

### Kitty

Install `kitty`. Settings in `~/.config/kitty/kitty.conf`.

## Misc

- `neofetch`
- `texlive-meta`
