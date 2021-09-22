#!/bin/sh
echo "setting console keymap"

sed -i -e "s|#\?KEYMAP=.*|KEYMAP=dvorak-swapescape|" /etc/rc.conf
cp dvorak-swapescape.map.gz /usr/share/kbd/keymaps/i386/

echo "setting X keyboard layout"
mkdir -p /etc/X11/xorg.conf.d/
cp 10-keyboard.conf /etc/X11/xorg.conf.d/
