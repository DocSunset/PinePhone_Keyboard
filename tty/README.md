# TTY Only Settings

Add ppkb.map to your system  
```bash
# mkdir /usr/local/share/kbd/keymap/pine
# cp ./ppkb.map /usr/local/share/kbd/keymap/pine
```

On Systemd systems add `/PinePhone/tty/83-ppkb.rules` to the following drectory `/etc/udev/rules.d` and to trigger the new rule run:  

```
# udevadm control --reload
```
or:  

```
# udevadm trigger
```

See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration  
https://wiki.archlinux.org/title/Udev
