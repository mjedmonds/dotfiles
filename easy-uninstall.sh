#!/bin/sh

#add symlinks through stow
cd ~/.dotfiles
stow --ignore ".DS_Store" --delete vim
stow --ignore ".DS_Store" --delete zsh
stow --ignore ".DS_Store" --delete bash
stow --ignore ".DS_Store" --delete git
stow --ignore ".DS_Store" --delete slate
#ln -s ./.clang_format ~/.clang_format
rm ~/.jsbeautifyrc
rm ~/.emacs.d
rm ~/.spacemacs

