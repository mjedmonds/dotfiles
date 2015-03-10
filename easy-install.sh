#!/bin/sh

#add symlinks through stow
cd ~/dotfiles
stow vim
stow zsh
stow bash
stow tmux
stow tmuxinator
stow git

#Plugin installations
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make
