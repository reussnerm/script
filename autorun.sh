#!/usr/bin/env bash
remind  -z -k'/home/reussnerm/.bin/rem_notify.sh %s | ~/.bin/dbus_wrapper_no_x.sh &' /home/reussnerm/.reminders &
setxkbmap -option 'grp:alt_space_toggle,ctrl:nocaps' 'ch(fr),us'
setxkbmap -model thinkpad
autocutsel -fork
autocutsel -selection PRIMARY -fork
ssh -fN undernet

