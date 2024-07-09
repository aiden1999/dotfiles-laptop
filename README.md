# dotfiles-laptop-arch

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

Settings in `~/.XResources`. To load `.Xresources`:

```
$  xrdb -merge ~/.Xresources
```
Restart xorg for changes to take effect.

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
