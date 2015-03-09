#medmonds34 dotfiles
Personal dotfiles for *nix

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

After installing, the symlinks still need to be created. I use ```stow```.

```
stow vim
stow zsh
stow bash
stow tmux
stow tmuxinator
stow git
```

Updating submodules:

```
git submodule update --init --recursive
```

Some plugins still need to be installed on new systems. For Command-t

```
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```
