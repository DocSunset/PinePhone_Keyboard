#!/bin/sh

echo "Outputting your sway inputs"
swaymsg -t get_inputs
echo ""
echo "Outputting your current xkb settings"
xmodmap -pm
echo ""
echo "Comparing files from this repo to your local files, will do this recursively."
echo "Differences preceeded with < are in your local files"
echo "Differences preceeded with > are in the repo"
echo "Files listed with 'Only in' don't have any differences"
echo ""
diff -r /usr/share/X11/xkb/rules ./rules
diff -r /usr/share/X11/xkb/symbols ./symbols
