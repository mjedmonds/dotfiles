#!/bin/sh

#add symlinks through stow
stow vim
stow zsh
stow bash
stow tmux
stow tmuxinator
stow git

#Plugin installation
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
