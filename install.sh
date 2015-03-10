#!/bin/sh

cd ~/
git clone --recursive git://github.com/medmonds34/dotfiles.git

#add symlinks through stow
cd ~/dotfiles
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
