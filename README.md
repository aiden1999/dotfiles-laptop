# dotfiles-laptop-arch

## Touchpad
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
