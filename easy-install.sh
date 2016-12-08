#!/bin/sh

#add symlinks through stow
cd ~/dotfiles
stow --ignore ".DS_Store" vim
stow --ignore ".DS_Store" zsh
stow --ignore ".DS_Store" bash
stow --ignore ".DS_Store" tmux
stow --ignore ".DS_Store" tmuxinator
stow --ignore ".DS_Store" git
stow --ignore ".DS_Store" slate
#ln -s ./.clang_format ~/.clang_format
ln -s ./.jsbeautifyrc ~/.jsbeautifyrc

#Plugin installations


