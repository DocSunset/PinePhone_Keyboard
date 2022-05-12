# PinePhone_Keyboard

Configs and settings for the PinePhone Keyboard

# TTY Only Settings
Copy ppkb.map to /usr/local/share/kbd/keymap/pine

On Arch Linux add the following to /etc/vconsole.config
```
KEYMAP=/usr/local/share/kbd/keymap/pine/ppkb.map
```
See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration

# GUI Only Settings
For SWMO see changes in 0001-sway-config.patch for ppkb xkb modification, the below is the notes. Need to add this to your sway config under $HOME/.config/sxwm/sway

See the following for US layout issues:
https://wiki.archlinux.org/title/Xmodmap

Need the patches from mobian that has been upsteamed to xkb but best to check:  
PinePhone_Keyboard/xkb/(rules or symbols) or,  
https://gitlab.com/mobian1/packages/xkeyboard-config/-/tree/mobian/debian/patches