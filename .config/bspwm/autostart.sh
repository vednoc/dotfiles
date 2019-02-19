#!/usr/bin/env sh

xrdb -merge $XDG_CONFIG_HOME/x/Xresources

sxhkd &
wal -R &
$XDG_CONFIG_HOME/.config/polybar/launch.sh &
compton -f --config $XDG_CONFIG_HOME/.config/compton/compton.conf &
xautolock --time 20 --locker slock &
redshift-gtk &
nm-applet &
emacs --daemon &
