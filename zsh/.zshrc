# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="avit"
#ZSH_THEME="../../../zsh-extra/minimal/minimal"
#ZSH_THEME="kardan"

# Set to blank for PURE theme
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew vi-mode zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
#

source $ZSH/oh-my-zsh.sh
#export CFLAGS=-I/usr/lib/python2.7/site-packages/numpy/core/include/

# PURE ZSH Theme
# if [[ "$OSTYPE" = "linux"* ]]; then
#   # global path fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
#   fpath+=("${HOME}/node_modules/pure-prompt/functions")
# fi
# PURE_PROMPT_SYMBOL="➜"
# autoload -U promptinit; promptinit
# prompt pure

SPACESHIP_PROMPT_ORDER=(
  time     #
  dir
  git
  conda
  ruby
  xcode
  swift
  golang
  docker
  user     # before prompt char
  host     #
  line_sep
  jobs
  exit_code
  venv
  pyenv
  char
)

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX=" " # remove space before host
SPACESHIP_USER_COLOR="grey"

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX="" # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC="3" # number of directories to show

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL=""

# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUBY_SYMBOL=""

# XCODE
SPACESHIP_XCODE_PREFIX="xcode:("
SPACESHIP_XCODE_SUFFIX=") "
SPACESHIP_XCODE_SYMBOL=""

# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
SPACESHIP_SWIFT_SYMBOL=""

# GOLANG
SPACESHIP_GOLANG_PREFIX="go:("
SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL=""

# DOCKER
SPACESHIP_DOCKER_PREFIX="docker:("
SPACESHIP_DOCKER_SUFFIX=") "
SPACESHIP_DOCKER_SYMBOL=""

# CONDA
SPACESHIP_CONDA_PREFIX="conda:("
SPACESHIP_CONDA_SUFFIX=") "
SPACESHIP_CONDA_SYMBOL=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL=""

# autoload -U promptinit; promptinit
# prompt spaceship

# dotfiles directory
DOTFILES="${HOME}/dotfiles"

# Share history aross zsh sessions
# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

# bind vim keybindings
function zle-line-init zle-keymap-select {
	# Change the cursor style depending on keymap mode.
	case $KEYMAP {
		vicmd)
			printf '\e[0 q' # Box.
			;;

		viins|main)
			printf '\e[5 q' # Vertical bar.
			;;
	}
}
zle -N zle-line-init
zle -N zle-keymap-select

# bind the up/down arrows to complete the previous command matching up tot eh cursor
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

#source tmuxinator settin
#source ~/.bin/tmuxinator.zsh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# colored completion - use my LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
function pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

function pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
## end speedup paste zsh

# alias for better ls
alias ll="ls -alh"

# youtube downloader alias
alias ytrip="youtube-dl --prefer-ffmpeg --format 'bestvideo+bestaudio[ext=m4a]/bestvideo+bestaudio/best' --merge-output-format mp4--output \"%(title)s.%(ext)s\""

# alias for cleaning draw.io SVGs for powerpoint
alias draw-io-clean-svg="${DOTFILES}/scripts/draw-io-clean-svg.sh"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# enable 256 colors
export TERM=xterm-256color

# bash-like globbing
unsetopt nomatch

# emacs aliases
#alias emax="emacsclient -t"              # used to be "emacs -nw"
#alias semac="sudo emacsclient -t"        # used to be "sudo emacs -nw"
#alias emacsc="emacsclient -c -a emacs"   # new - opens the GUI with alternate non-daemon

#alias edit="~/Dropbox/Developer/emacsclient.sh"  # set to edit as a daemon

alias add-static-route="${HOME}/dotfiles/scripts/add-static-route.sh"
alias remove-static-route="${HOME}/dotfiles/scripts/remove-static-route.sh"
alias add-google-static-routes="${HOME}/dotfiles/scripts/add-google-static-routes.sh"

# OS X sepcific settings
if [[ "$OSTYPE" = "darwin"* ]]; then
  export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH
  export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH

  alias rm='safe-rm'
  alias trash="trash"

  if [[ -e ~/.zshrc-hidden ]]; then
    source ~/.zshrc-hidden
  fi

  alias pycharm='/Applications/PyCharm.app/Contents/MacOS/pycharm'
  alias postprocessmusic="${HOME}/Dropbox/Developer/mark-rMBP-repos/music/music-management/postprocessmusic.sh"
  alias playlist-sync="${HOME}/Dropbox/Music/Music\ Temp/Edmonds/Playlist\ Rips/playlist_sync.sh"

  #export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

fi

#linux specific settings
if [[ "$OSTYPE" = "linux"* ]]; then
  export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH:/usr/local/cuda/lib64
  export CUDA_HOME=/usr/local/cuda
  export PATH=$PATH:"${HOME}/.local/bin":/usr/local/cuda/bin
  # pkg-config path (for OMPL)
  export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
  export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH

  alias matlab="LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libstdc++.so.6" matlab &"

  export CMAKE_PREFIX_PATH=${HOME}/Developer/opencv-2.4.13/build:${HOME}/Developer/libfreenect2/build:$CMAKE_PREFIX_PATH

  if [[ -e /opt/ros/kinetic/setup.zsh ]]; then
    source /opt/ros/kinetic/setup.zsh
  fi
  if [[ -e /opt/ros/melodic/setup.zsh ]]; then
    source /opt/ros/melodic/setup.zsh
  fi
  if [[ -e ~/catkin_ws/devel/setup.zsh ]]; then
    source ~/catkin_ws/devel/setup.zsh
  fi
  # prevent use of rm directly
  # (you can explicitly run rm with \rm)
  alias rm='safe-rm'
  alias trash="trash-put"
  alias gvir="gvim --remote-tab"

  # vpn aliases
  alias wg-start="sudo systemctl start wg-quick@wg0"
  alias wg-stop="sudo systemctl stop wg-quick@wg0"
  alias wg-status="sudo systemctl status wg-quick@wg0"


  if [[ -d ~/Developer/sketch-1.7.6 ]]; then
    export SKETCH_DIR="${HOME}/Developer/sketch-1.7.6"
    export PATH="$PATH:$SKETCH_DIR/sketch-frontend"
    export SKETCH_HOME="$SKETCH_DIR/sketch-frontend/runtime"
  fi

fi

#source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
conda_exec="${HOME}/miniconda3/bin/conda"
__conda_setup="$(${conda_exec} 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/miniconda3/etc/profile.d/conda.sh" ]; then
        . "${HOME}/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

