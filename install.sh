#!/bin/bash

user=m
home=/home/$user

pacman -S --needed $(cat pacman/pkglist | grep -v intel-ucode)

# disable beep
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf

cp bash/.bashrc $home/.bashrc
cp tmux/.tmux.conf $home/.tmux.conf
cp xinit/.xinitrc $home/.xinitrc
cp touchpad/30-touchpad.conf /etc/X11/xorg.conf.d/

mkdir -p $home/.config/i3
cp i3/config $home/.config/i3/
cp i3/i3blocks.conf $home/.config/i3/

cp -r scripts/* $home/scripts/

firefox_profile=$(grep 'Path=' $home/.mozilla/firefox/profiles.ini | sed s/^Path=// | grep release)
cp firefox/user.js $home/.mozilla/firefox/$firefox_profile/

mkdir -p $home/.config/gtk-3.0
cp gtk/settings.ini $home/.config/gtk-3.0/
cp gtk/.gtkrc-2.0 $home/

mkdir -p $home/.config/dconf/
cp gnome-terminal/user $home/.config/dconf/

cp -r autokey_scripts/ $home/
cp -r autokey $home/.config/
chown -r $user:$user $home/autokey_scripts/
chown -r $user:$user $home/.config/autokey/

cp vim/.vimrc $home/
cp -r vim/.vim $home/

git config --global core.editor vim
git config --global user.email "jmiguelmd98@gmail.com"
git config --global user.name "João Dias"

# traditional interface names
ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules
