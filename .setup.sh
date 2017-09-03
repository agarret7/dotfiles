#!/bin/bash

# debian custom installation script

username=agarret7

#-------------------------------------------------------#
#-------- PACKAGE ----------------- DESCRIPTION --------#
#-------------------------------------------------------#

packages="apt-utils            "` # self-explanatory
        `"audacity             "` # audio editing
        `"cabal-debian         "` # haskell package manager
        `"cmake                "` # build system for cxx
        `"cmatrix              "` # puts the matrix in terminal
        `"dropbox              "` # cloud storage
        `"eclipse              "` # java IDE
        `"feh                  "` # background chooser
        `"git                  "` # software version control
        `"google-chrome-stable "` # internet browser
        `"haskell-platform     "` # haskell language
        `"i3-wm                "` # i3 window manager
        `"i3blocks             "` # i3 status bar
        `"kdenlive             "` # video editing
        `"python-dev           "` # python 2.7 dev
        `"python-pip           "` # python 2.7 package manager
        `"python3.5            "` # python 3.5
        `"python3-dev          "` # python 3.* dev
        `"python3-pip          "` # python 3.* package manager
        `"rxvt-unicode         "` # custom terminal emulator
        `"skypeforlinux        "` # video caller
        `"spotify-client       "` # music player
        `"steam                "` # game distribution platform
        `"sudo                 "` # root access proxy
        `"texlive-full         "` # latex language (typesetting)
        `"texmaker             "` # latex IDE
        `"vim                  "` # terminal text editor
        `"vlc                  "` # video player
        `"unzip                "  # zip extraction

python_lib="h5py               "` # binary data interchange format
          `"matplotlib         "` # data visualization
          `"numpy              "` # numerical data manipulation
          `"pygame             "` # graphics interface
          `"scipy              "  # scientific computing
         
dpkg --add-architecture i386

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Chrome
wget -q -0 - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Vundle
git clone https://github.com/vundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

apt-get update && apt-get upgrade
apt-get install $packages

pip2 install $python_lib
pip  install $python_lib

git clone https://github.com/agarret7/dotfiles.git ~

adduser $username
