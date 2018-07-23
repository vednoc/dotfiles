#!/usr/bin/env sh

killall -q polybar

while pgreg -u $UID -x polybar > /dev/null; do sleep 1; done

polybar main &

notify-send --urgency=LOW "[polybar] launched."