#!/bin/bash

cp bash/.bashrc ~/.bashrc
cp i3/config ~/.config/i3
cp i3/i3blocks.conf ~/.config/i3
cp -r scripts/* ~/scripts/
cp tmux/.tmux.conf ~/.tmux.conf
cp xinit/.xinitrc ~/.xinitrc
cp touchpad/30-touchpad.conf /etc/X11/xorg.conf.d/

firefox_profile=$(grep 'Path=' ~/.mozilla/firefox/profiles.ini | sed s/^Path=// | grep release)
cp firefox/user.js ~/.mozilla/firefox/$firefox_profile/

cp gtk/settings.ini ~/.config/gtk-3.0/
cp gtk/.gtkrc-2.0 ~/
cp gnome-terminal/user ~/.config/dconf/
cp -r autokey_scripts/ ~/
