export PATH=$HOME/bin:/usr/local/.bin:$PATH
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export EDITOR='vim'
export GIT_EDITOR='vim'

# common zsh settings
ZSH_THEME="wedisagree"
ZSH=/usr/share/oh-my-zsh/
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git zsh-syntax-highlighting)


# custom aliases
alias mergex11="xrdb .Xresources"
alias senmon="watch -d -n 1 sensors"
alias memmon="watch -d -n 1 free -m"
alias pipesc="pipes -p 21 -r 3000 -t 6"
alias npmtree="npm ls -g --depth=0"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias ps="ps auxf"
alias wget="wget -c"
alias mkdir="mkdir -pv"
alias wal="wal -o $HOME/.bin/colors.sh"
alias yt="youtube-dl --add-metadata -ic"
alias yta="youtube-dl --add-metadata -xic"
alias p="sudo pacman"
alias svim="sudo vim"
alias pkgsys="(pacman -Qet && pacman -Qm) | sort -u"
alias ka="killall"

# check memory usage of a process
# single process: slap Xorg
# every process: slap /
function slap () {
  ps -eo size,pid,user,command --sort -size | \
  awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | \
  cut -d "" -f2 | \
  cut -d "-" -f1 | \
  grep $1 | \
  grep -v grep
}

# check core memory used per program (not per process)
function poke () {
  ps_mem -p $(pgrep -d, -u $USER) | \
  grep $1
}

# make a dir and cd into it
function mcd () {
  mkdir -p $1
  cd $1
}

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
