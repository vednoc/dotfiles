# executed when the user logs in
export PATH=$PATH:$HOME/.bin

# auto-start bspwm on tty1
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep -x bspwm || exec startx
fi
