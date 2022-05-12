# PinePhone_Keyboard

Configs and settings for the PinePhone Keyboard

# TTY Settings
Copy ppkb.map to /usr/local/share/kbd/keymap/pine

On Arch Linux add the following to /etc/vconsole.config
```
KEYMAP=/usr/local/share/kbd/keymap/pine/ppkb.map
```
See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration

# GUI Settings
For SWMO see changes in 0001-sway-config.patch for ppkb xkb modification, the below is the notes. Need to add this to your sway config under $HOME/.config/sxwm/sway

Line 7: Input code for ppkb, use swaymsg -t get_inputs to get input code  
Line 8: Set the layout of the keyboard to US  
Line 9: Set model to ppkb, uses altg for top row |\£€~`-=_+  
Line 10: Need this for US (standard layout), left and right alt are set to same mod, which is mod1, this changes altg to mod3 for ppkb model keys to work properly.

See the following for US layout issues:
https://wiki.archlinux.org/title/Xmodmap

Need the patches from mobian that has been upsteamed to xkb but best to check:
https://gitlab.com/mobian1/packages/xkeyboard-config/-/tree/mobian/debian/patches