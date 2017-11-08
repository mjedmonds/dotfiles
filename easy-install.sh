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


#add symlinks through stow
cd ~/.dotfiles
stow --ignore ".DS_Store" vim
e_success "configured vim"
stow --ignore ".DS_Store" zsh
e_success "configured zsh"
stow --ignore ".DS_Store" bash
e_success "configured bash"
stow --ignore ".DS_Store" git
e_success "configured git"
if [ "$(uname)" == "Darwin" ]; then
  stow --ignore ".DS_Store" slate
  e_success "configured slate (macOS)"
fi

#symlink "{PWD}/.clang_format" "${HOME}/.clang_format"
symlink "${PWD}/.jsbeautifyrc" "${HOME}/.jsbeautifyrc"
e_success "configured jsbeautifyrc"
#symlink "${PWD}/emacs/spacemacs" "${HOME}/.emacs.d"
#symlink "${PWD}/emacs/.spacemacs" "${HOME}/.spacemacs""

# sublime-text
SUBLIME_TEXT_USER_PATH=""
SUBLIME_TEXT_DOTFILES_PATH="$HOME/.dotfiles/sublimetext3"
if [ "$(uname)" == "Darwin" ]; then
  # OS X
  SUBLIME_TEXT_USER_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  symlink "$SUBLIME_TEXT_DOTFILES_PATH/Default_(OSX).sublime-keymap" "$SUBLIME_TEXT_USER_PATH/Default (OSX).sublime-keymap"
  symlink "$SUBLIME_TEXT_DOTFILES_PATH/Default_(OSX).sublime-mousemap" "$SUBLIME_TEXT_USER_PATH/Default (OSX).sublime-mousemap"
  e_success "configured sublime text (macOS)"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Linux
  SUBLIME_TEXT_USER_PATH="$HOME/.config/sublime-text-3/Packages/User"
  symlink "$SUBLIME_TEXT_DOTFILES_PATH/Default_(Linux).sublime-keymap" "$SUBLIME_TEXT_USER_PATH/Default (Linux).sublime-keymap"
  symlink "$SUBLIME_TEXT_DOTFILES_PATH/Default_(Linux).sublime-mousemap" "$SUBLIME_TEXT_USER_PATH/Default (Linux).sublime-mousemap"
  e_success "configured sublime text (Linux)"
fi

if [ ! "$SUBLIME_TEXT_USER_PATH" == "" ]; then
    symlink "$SUBLIME_TEXT_DOTFILES_PATH/Preferences.sublime-settings" "$SUBLIME_TEXT_USER_PATH/Preferences.sublime-settings"
    symlink "$SUBLIME_TEXT_DOTFILES_PATH/phpcs.sublime-settings" "$SUBLIME_TEXT_USER_PATH/phpcs.sublime-settings"
    symlink "$SUBLIME_TEXT_DOTFILES_PATH/Snippets" "$SUBLIME_TEXT_USER_PATH/Snippets"
    symlink "$SUBLIME_TEXT_DOTFILES_PATH/Package_Control.sublime-settings" "$SUBLIME_TEXT_USER_PATH/Package Control.sublime-settings"
fi

