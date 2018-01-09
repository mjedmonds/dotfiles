#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y

# multi user access
sudo chmod 0750 /home/*

# chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y

# ros
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full -y
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall ros-kinetic-robot-localization ros-kinetic-moveit ros-kinetic-moveit-ros ros-kinetic-object-recognition-ros ros-kinetic-tf2-sensor-msgs ros-kinetic-move-base -y

# libraries
sudo apt-get install mesa-utils synaptic timelimit scons petsc-dev freeglut3-dev openssh-server vim emacs cmake-qt-gui libmetis-dev cmake-curses-gui libopenvdb-dev libgtest-dev libzmqpp-dev liblua5.2-dev libzmqpp-dev libilmbase-dev libopenexr-dev indicator-multiload vlc compizconfig-settings-manager unity-tweak-tool avahi-daemon avahi-discover avahi-utils libnss-mdns mdns-scan linux-image-extra-virtual git p7zip-full unrar-free htop imagemagick openscad blender kolourpaint4 libspatialindex-dev libgeos-dev python3-pip liblapack-dev libatlas-base-dev libatlas-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler shutter texlive-full clang-format redshift redshift-gtk ffmpeg gitk libglew-dev libglfw3-dev python-scipy alien inkscape libcgal-dev libcgal-qt5-dev gstreamer1.0-libav libturbojpeg libjpeg-turbo8-dev meld p7zip-rar python-virtualenv python-dev swig python-pygame python-qt4 npm clang libmagick++-dev python-tk python-imaging-tk python-pip libcsfml-dev gtk-recordmydesktop python3 python3-pyqt5 python3-requests python3-xlib python3-pillow tesseract-ocr-eng tesseract-ocr-chi-tra tesseract-ocr-chi-sim lm-sensors ntpdate graphviz-dev samba-common-bin texmaker tree -y
sudo add-apt-repository ppa:noobslab/themes -y # theme
sudo apt-add-repository ppa:numix/ppa -y # icon
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y # gimp
sudo apt-add-repository ppa:octave/stable -y # octave
sudo add-apt-repository ppa:zarquon42/meshlab -y # meshlab
sudo apt-get update
sudo apt-get install flatabulous-theme numix-icon-theme numix-icon-theme-circle gimp octave meshlab -y

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
sudo apt-get install gcc-4.7 gcc-4.8 gcc-4.9 gcc-6 g++-4.7 g++-4.8 g++-4.9 g++-6 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 30
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 40
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 35
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.7 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 30
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 40
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 35
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

# chinese input
# sudo apt-get install ibus-sunpinyin
# reboot to enable

# audio
# sudo apt-get install pavucontrol

# dropbox downloaded from official website, remove previous link in dropbox security

# setup git
# ssh-keygen -t rsa -b 4096 -C "yixinzhu.xjtu@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# git config --global user.email "yixinzhu.xjtu@gmail.com"
# git config --global user.name "Yixin Zhu"
# git config --global push.default simple

# setup bashrc
# setup network

# compile libraries

# setup slack as startup, add all accounts

# pycharm, clion

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