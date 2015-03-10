#medmonds34 dotfiles
Personal dotfiles for Linux/Unix systems. 

####Why?

A dotfile repo enables reconfiguring my daily setup on new Linux/Unix systems substainially easier while providing a backup for my configuration. I can't honestly recommend blindly using this as your configuration, however it may give you inspiration for yours. You can use this setup to create your own dotfile repo!

##Installation
To clone the entire repo, including submodules, run:

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

###Symlinking to ~/
After cloning, symlinks still need to be created to link your home directory to this repo. I use ```stow```, but you can manually link or use other helpers such as ```homesick``` or ```homeshick```. You do not have to stow everything, only what you need on the current system.

```
stow vim
stow zsh
stow bash
stow tmux
stow tmuxinator
stow git
```

###Plugin Installation
Some plugins need further steps to install on new systems. These instructions were copied from plugin sources.

####Vim - Command-t

```
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make
```

##Updating and Adding Submodules

To update all submodules, run:

```
git submodule update --init --recursive
```

To add another git repo, ```cd``` to the appropiate directory and run:

```
git submodule add git://github.com/foo/bar.git
```

##Easy Install

The script ```easy-install.sh``` will automatically install this dotfile configuration. The script relies on ```git```, ```stow```, and ```ruby```. It will link the entire configuration. If you don't need everything or would like to use parts of your existing configuration, do not use this script.

To run, clone the repo and simply execute the script:

```
cd ~/
git clone --recursive git://github.com/medmonds34/dotfiles.git
cd ~/dotfiles
./easy-install.sh
```
