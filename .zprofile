# executed when the user logs in

# https://0x46.net/thoughts/2019/02/01/dotfile-madness/
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# auto-start startx (only) on tty1;
# start with ssh-agent so the ssh passwords persist throughout Xorg session
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep -x bspwm || exec ssh-agent startx
fi
