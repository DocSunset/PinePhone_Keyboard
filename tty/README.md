# TTY Only Settings

Add ppkb related files to your system  
```bash
# mkdir /usr/local/share/kbd/keymap/pine
# cp ./ppkb.map /usr/local/share/kbd/keymap/pine
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
