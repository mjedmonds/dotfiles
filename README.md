#medmonds34 dotfiles
Personal dotfiles for Linu/Unix systems

##Installation
To install, run:

```
cd ~/
git clone --recursive git://github.com/medmonds34/dotfiles.git
```

Or:

```
cd ~/
git clone git://github.com/medmonds34/dotfiles.git
cd dotfiles
git submodule update --init --recursive
```

##Symlinking to ~/
After installing, the symlinks still need to be created. I use ```stow```, but you can manually link or use other helpers such as ```homesick``` or ```homeshick```

```
stow vim
stow zsh
stow bash
stow tmux
stow tmuxinator
stow git
```

##Updating Submodules
Updating submodules:

```
git submodule update --init --recursive
```

##Plugin Installation
Some plugins still need to be installed on new systems. 

###Command-t

```
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```
