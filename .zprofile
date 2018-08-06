# launched when the user logs in
export PATH=$PATH:$HOME/bin

# exec startx on tty1 if bspwm isn't running
# convenient to have; only tty1 is affected
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep -x bspwm || exec startx
fi
