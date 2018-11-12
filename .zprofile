# executed when the user logs in

# export .bin to the path
export PATH=$PATH:$HOME/.bin

# auto-start startx (only) on tty1;
# start with ssh-agent so the ssh passwords persist throughout Xorg session
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep -x bspwm || exec ssh-agent startx
fi
