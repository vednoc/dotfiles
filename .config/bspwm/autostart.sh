#!/usr/bin/env sh

xrdb -merge $HOME/.Xresources

sxhkd &
wal -R &
$HOME/.config/polybar/launch.sh &
$HOME/.config/compton/compton.conf &
xautolock --time 20 --locker slock &
redshift-gtk &
nm-applet &
emacs --daemon &
