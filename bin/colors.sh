#!/usr/bin/env sh

# get x11 colors
function get () {
  xrdb -query | grep "$1" | awk '{print $2}' | tail -n1
}

# kill dunst
killall -9 dunst

# launch dunst with new config
dunst \
  -lb "$(get color0)" -lf "$(get color7)" -lfr "$(get color7)" \
  -nb "$(get color0)" -nf "$(get color7)" -nfr "$(get color4)" \
  -cb "$(get color0)" -cf "$(get color7)" -cfr "$(get color5)" \
  & disown

# set wm colors
bspc config normal_border_color "$(get color0)"
bspc config active_border_color "$(get color6)"
bspc config focused_border_color "$(get color2)"
bspc config presel_feedback_color "$(get color2)"

# set quick notifications
notify-send "[dunst] updated colors"
sleep 1
notify-send "[bspwm] updated colors"