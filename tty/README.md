# TTY Only Settings

Add ppkb.map to your system  
```
# mkdir /usr/local/share/kbd/keymap/pine
# cp ./ppkb.map /usr/local/share/kbd/keymap/pine
```

On Arch Linux add the following:  
    /etc/vconsole.config
```
KEYMAP=/usr/local/share/kbd/keymap/pine/ppkb.map
```
See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration
