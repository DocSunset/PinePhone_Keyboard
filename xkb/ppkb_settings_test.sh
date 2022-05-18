#!/bin/sh

echo "Outputting your current xkb settings"
xmodmap -pm
echo ""
echo "Comparing files from this repo to your local files, will do this recursively."
echo "Differences preceeded with < are in the repo"
echo "Differences preceeded with > are in your local files"
echo "Files listed with 'Only in' don't have any differences"
echo ""
diff -r ./rules /usr/share/X11/xkb/rules
diff -r ./symbols /usr/share/X11/xkb/symbols
