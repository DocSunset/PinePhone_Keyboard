# TTY Only Settings

Good News! The keymap for this has been included in the kbd package:  
https://git.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git/tree/data/keymaps/pine/en.map?id=1589e9e1019756b5287b41dddcd7285271c5990e  
In the future this will only serve to host the udev rule for auto orientation for the screen and loading the keymap.

Add ppkb related files to your system  
```bash
# mkdir /usr/local/share/kbd/keymap/pine
# cp ./en.map /usr/local/share/kbd/keymap/pine
# cp ./ppkb_detector.sh /usr/bin/
```

On Systemd systems add `/PinePhone/tty/83-ppkb.rules` to the following directory `/etc/udev/rules.d` and to trigger the new rule run:  

```
# udevadm control --reload
```
or:  

```
# udevadm trigger
```
or last option is to reboot the phone.  

The udev rule detects that the ppkb is connnected by monitoring the kernel module and assigning automatically the keymap and screen orientation for you.

This has been made the same as xkb and AltG + top row will display the correct symbols.

See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration  
https://wiki.archlinux.org/title/Udev
