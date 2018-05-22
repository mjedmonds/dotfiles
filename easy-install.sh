#!/bin/bash

# some helper functions, credits to Ben "cowboy" Alman
# see https://github.com/cowboy/dotfiles/blob/master/bin/dotfiles#L26-L30
function e_header()  { echo -e "\n\033[1m$@\033[0m"; }
function e_success() { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()   { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()   { echo -e " \033[1;34m➜\033[0m  $@"; }


function symlink() {
    if [ -h "$2" ]; then
        local target="$(readlink -f ${2})"
        if [ "$1" == "$target" ]; then
            # don't create symlink if it exists and the target is the same
            return 0
        fi
    fi
    if [ -f "$2" ]; then
        e_error "File already exists!"
        local newname="$2.$(date +%s)"
        mv "$2" "$newname" && e_success "renamed to $newname"
    fi
    ln -s "$1" "$2"
}

function print_update() {
    if [ $? -eq 0 ]; then
        e_success "Configured $1"
    else
        e_error "Error configuring $1"
    fi
}

#add symlinks through stow
cd ~/.dotfiles
stow --ignore ".DS_Store" vim
print_update "vim"
stow --ignore ".DS_Store" zsh
print_update "zsh"
stow --ignore ".DS_Store" bash
print_update "bash"
stow --ignore ".DS_Store" git
print_update "git"
if [ "$(uname)" == "Darwin" ]; then
  stow --ignore ".DS_Store" slate
  print_update "slate (macOS)"
  # symlink pheonix
  symlink "${PWD}/phoenix/phoenix.js" "${HOME}/.phoenix.js"
  print_update "phoenix"
fi

symlink "${PWD}/vim/.vim" "${HOME}/.config/nvim"
print_update "neovim"

#symlink "{PWD}/.clang_format" "${HOME}/.clang_format"
symlink "${PWD}/.jsbeautifyrc" "${HOME}/.jsbeautifyrc"
print_update "jsbeautifyrc"
#symlink "${PWD}/emacs/spacemacs" "${HOME}/.emacs.d"
#symlink "${PWD}/emacs/.spacemacs" "${HOME}/.spacemacs""

# symlink oni
symlink "${PWD}/oni" "${HOME}/.config/oni"
print_update "oni"

# vscode
if [ "$(uname)" == "Darwin" ]; then
    vscode_base_path=${HOME}/Application\ Support
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then\
    vscode_base_path=${HOME}/.config
fi
mkdir -p ${vscode_base_path}
symlink ${PWD}/vscode/settings.json ${vscode_base_path}/Code/User/settings.json
print_update "vscode settings"
symlink ${PWD}/vscode/keybindings.json ${vscode_base_path}/Code/User/keybindings.json
print_update "vscode keybindings"
symlink ${PWD}/vscode/snippets ${vscode_base_path}/Code/User/snippets
print_update "vscode snippets"

# sublime-text
SUBLIME_TEXT_USER_PATH=""
SUBLIME_TEXT_DOTFILES_PATH="$HOME/.dotfiles/sublimetext3"
if [ "$(uname)" == "Darwin" ]; then
  # OS X
  SUBLIME_TEXT_USER_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Linux
  SUBLIME_TEXT_USER_PATH="$HOME/.config/sublime-text-3/Packages"
fi
mkdir -p $SUBLIME_TEXT_USER_PATH
symlink "$SUBLIME_TEXT_DOTFILES_PATH/User" "$SUBLIME_TEXT_USER_PATH/User" 
print_update "sublime text"


