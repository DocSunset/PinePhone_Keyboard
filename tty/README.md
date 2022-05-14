# TTY Only Settings

Add ppkb.map to your system  
```bash
# mkdir /usr/local/share/kbd/keymap/pine
# cp ./ppkb.map /usr/local/share/kbd/keymap/pine
```

On Systemd systems add the following:  

<pre>/etc/vconsole.config</pre>
<pre>KEYMAP=/usr/local/share/kbd/keymap/pine/ppkb.map</pre>

See the following for more information:
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration
