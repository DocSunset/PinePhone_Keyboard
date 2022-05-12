# PinePhone_Keyboard

Configs and settings for the PinePhone Keyboard

### Background Information

Since kernel > 5.17, thy top row keymapping for the following symbols doesn't work |\£€~`-=_+. To address this I have made a list of changes below of your use cases, either TTY or GUI 

### TTY Only Settings
Copy ppkb.map to /usr/local/share/kbd/keymap/pine

On Arch Linux add the following to /etc/vconsole.config
```
KEYMAP=/usr/local/share/kbd/keymap/pine/ppkb.map
```
See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration

### GUI Only Settings
For SWMO see changes in 0001-sway-config.patch for ppkb xkb modification. Need to add this to your sway config under $HOME/.config/sxwm/sway. See the patch notes at the start for information that I have found.

See the following for US layout issues:
https://wiki.archlinux.org/title/Xmodmap

Need the patches from Mobian that has been upsteamed to xkb but best to check that your local files are patched in the location /usr/share/X11/xkb/(rules or symbols):  
PinePhone_Keyboard/xkb/(rules or symbols) or,  
https://gitlab.com/mobian1/packages/xkeyboard-config/-/tree/mobian/debian/patches
This can be checked by using the tool diff on the your local files against the above, or you can inspect the files by hand.
