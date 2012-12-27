#!/bin/sh
# enable my second display when I'm home
xrandr --output LVDS1 --mode 1600x900 --pos 0x0 --rotate normal --output VGA1 --mode 1280x1024 --pos 1600x0 --rotate normal
