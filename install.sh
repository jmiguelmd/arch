#!/bin/bash

rsync -avh --progress touchpad/30-touchpad.conf /etc/X11/xorg.conf.d/
rsync -avh --progress .bashrc ~/.bashrc
