#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y

# multi user access
# sudo chmod 0750 /home/*

# chrome
# cd ~/Downloads
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome-stable_current_amd64.deb
# sudo apt-get install -f -y

# ros
# sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
# sudo apt-get update
# sudo apt-get install ros-kinetic-desktop-full -y
# sudo rosdep init
# rosdep update
# echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
## source ~/.bashrc
# source ~/.zshrc
#sudo apt-get install python-rosinstall ros-kinetic-robot-localization ros-kinetic-moveit ros-kinetic-moveit-ros ros-kinetic-object-recognition-ros ros-kinetic-tf2-sensor-msgs ros-kinetic-move-base -y

# libraries
sudo apt-get install build-essential curl mesa-utils synaptic freeglut3-dev openssh-server vim cmake-qt-gui cmake-curses-gui libzmqpp-dev liblua5.2-dev  vlc git p7zip-full unrar-free htop python3-pip libhdf5-serial-dev libblas-dev liblapack-dev libgflags-dev texlive-full clang-format ffmpeg libglew-dev libglfw3-dev python-scipy libturbojpeg libjpeg-turbo8-dev meld gfortran p7zip-rar python-virtualenv python-dev swig python-pygame python-qt4 npm clang python-tk python-pil.imagetk python-pip gtk-recordmydesktop python3 python3-dev python3-pyqt5 python3-requests python3-xlib python3-pil lm-sensors ntpdate libgraphviz-dev texmaker tree meshlab gnome-tweak-tool zsh stow safe-rm gparted libfreetype6 libfreetype6-dev libpng-dev libpng++-dev libqhull-dev libgeos-dev -y
# sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y # gimp
# sudo apt-add-repository ppa:octave/stable -y # octave


# -----------------------------------
# DOWNLOAD PyPy3 FROM SOURCE!
# -----------------------------------

sudo chsh -s /bin/zsh mark

# Ubuntu themes 16.04+
sudo apt-get install arc-theme -y
# will also need to install gnome-shell theme to theme gnome-panel
sudo apt-get install chrome-gnome-shell 

sudo add-apt-repository ppa:snwh/pulp # paper theme
sudo apt-get update
sudo apt-get install paper-icon-theme

# sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
# sudo apt-get update
# sudo apt-get install gcc-4.7 gcc-4.8 gcc-4.9 gcc-6 g++-4.7 g++-4.8 g++-4.9 g++-6 -y
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 10
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 30
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 40
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 35
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.7 10
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 20
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 30
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 40
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 35
# sudo update-alternatives --config gcc
# sudo update-alternatives --config g++

sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y

# fix time and date
# http://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/

# driver & cuda
# export PATH="/usr/local/cuda-8.0/bin/:$PATH"
# export LD_LIBRARY_PATH="/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH"
# export CUDA_HOME="/usr/local/cuda-8.0"
# nvidia-smi
# nvcc --version
# sudo vim /etc/modprobe.d/blacklist-nouveau.conf
# add following lines:
# blacklist nouveau
# blacklist lbm-nouveau
# options nouveau modeset=0
# alias nouveau off
# alias lbm-nouveau off
# stop nouveau
# echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf
# sudo update-initramfs -u
# reboot

# sublime 3
# http://appnee.com/sublime-text-3-universal-license-keys-collection-for-win-mac-linux/
# sudo add-apt-repository ppa:webupd8team/sublime-text-3
# sudo apt-get update
# sudo apt-get install sublime-text-installer

# grub2 customizer
# sudo add-apt-repository ppa:danielrichter2007/grub-customizer
# sudo apt-get update
# sudo apt-get install grub-customizer -y

# R
# echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
# gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
# gpg -a --export E084DAB9 | sudo apt-key add -
# sudo apt-get update
# sudo apt-get install r-base r-base-dev

# teamviewer
# wget http://download.teamviewer.com/download/teamviewer_i386.deb
# sudo dpkg -i teamviewer_i386.deb
# sudo apt-get install -f
# vim /opt/teamviewer/tv_bin/script/teamviewer # add sleep 5
# setup as startup

# setup redshift and multiload
# setup vlc: $(HOME)/.config/vlc/vlcrc
# setup unity-tweak-tool

# audio
# sudo apt-get install pavucontrol

# dropbox downloaded from official website, remove previous link in dropbox security

# setup git
# ssh-keygen -t rsa -b 4096 -C "mark@mjedmonds.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# git config --global user.email "mark@mjedmonds.com"
# git config --global user.name "Mark Edmonds"
# git config --global push.default simple

# setup bashrc
# setup network

# docker
# sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
# sudo apt-get update
# sudo apt-get install docker-ce  

# visual studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y

# okular (pdf viewer)
sudo apt-get install okular -y

# install snap
sudo apt-get install snapd -y

# setup slack as startup, add all accounts
sudo snap install slack --classic

# spotify 
sudo snap install spotify

# gitkraken
sudo snap install gitkraken

# wine
# wget https://dl.winehq.org/wine-builds/Release.key
# sudo apt-key add Release.key
# sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
# sudo apt-get update
# sudo apt-get install wine -y

# pycharm, clion, idea
sudo snap install pycharm-professional --classic
sudo snap install clion --classic
sudo snap install intellij-idea-ultimate --classic
# sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
# sudo apt-get update
# sudo apt-get install ubuntu-make
# umake ide pycharm-professional
# umake ide clion
# umake ide idea-ultimate

# Clipboard management (copyq)
sudo add-apt-repository ppa:hluk/copyq
sudo apt-get update
sudo apt-get install copyq -y

# wallpaper changer (Variety)
sudo apt-get install variety -y

# ---------------------------------------------
# Ubuntu 18.04 specific tweaks
# ---------------------------------------------
# move min, max, close buttons to left
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'

# must do the following using the gnome extensions website
# install multi monitors add-on from gnome extension library
# install gnome-shell extension from gnome extension library
# install system-monitor extension from gnome extension library
# install dash to dock extension from gnome extension library
# install clipboard indicator extension from gnome extension library
# install impatience extension from gnome extension library
# ---------------------------------------------

# sublime
# clang-format:
# ctrl+alt+P -> install package control;
# ctrl+alt+P -> install package -> clang format;
# ctrl+alt+P -> clang-format -> set path;
# ctrl+alt+P -> clang-format -> set style -> Google;
# ctrl+atl+A
# language check: copy sublime_user_setting in dropbox to Preferences -> Settings

# Houdini

# Youtube Downloader
# sudo add-apt-repository ppa:nilarimogard/webupd8
# sudo apt update
# sudo apt install youtube-dlg

# Windows Boot Creator
# sudo add-apt-repository ppa:nilarimogard/webupd8
# sudo apt update
# sudo apt install woeusb

# MATLAB
# rm -rf /usr/local/MATLAB/*
# rm -rf ~/.matlab/
# sudo apt-get install --reinstall matlab-support
# sudo chown -R $USER: ~/.matlab

# OpenCV
# sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
# sudo ldconfig
# pkg-config --modversion opencv
