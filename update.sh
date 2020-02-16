#!/bin/bash

rsync -avh --progress ~/scripts .
rsync -avh --progress ~/.config/i3/* i3/
