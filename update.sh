#!/bin/bash

rsync -avh --progress ~/scripts .
rsync -avh --progress ~/.config/i3/* i3/
rsync -avh --progress /etc/X11/xorg.conf.d/30-touchpad.conf touchpad/
rsync -avh --progress ~/.bashrc .
