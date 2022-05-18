# SWMO Configs and Modified xkb files from Undef

The |\£€~-=_+ section of the top row can be accessed using AltG + top row keys. This is set in the xkb settings which were upstreamed by Undef.

XKB Source Information -  
https://gitlab.com/mobian1/packages/xkeyboard-config and,  
https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config/-/merge_requests/322

SWMO/Sway Information -  
See changes in `PinePhone_Keyboard/xkb/0001-sway-config.patch` for ppkb xkb modification. Need to add this to your sway config under `$HOME/.config/sxwm/sway`. See the patch notes at the start for information that I have found. I have added the code from the patch below:

```
input "0:0:PinePhone_Keyboard" {
       xkb_layout us
       xkb_model ppkb
       xkb_options lv3:ralt_switch
}
```

General XKB Information -  
See the following for US layout issues, us(intl) works out of the box but the ' turns into an accent for letters:
https://wiki.archlinux.org/title/Xmodmap

Use the files located in rules and symbols directories to confirm that the ppkb settings for xkb are in your local files

Check the following locations:  
`/usr/share/X11/xkb/(rules or symbols)`  
Against the same named files in the directories that follow.

This can be checked by using the tool `diff` on the your local files against the above, or you can inspect the files by hand.