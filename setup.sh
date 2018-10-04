#!/bin/bash

#---Author: Anthony Rodriguez
#---Created Date: 10/03/2018
#---Project Tag: linux, utility, bash
#---Purpose:
#   The purpose of this script is to setup the current machine
#   with preferences.
#--->

# Defining variables
user=$(whoami)
PASSWD=123456
ROOTPASSWD=987654

# Adding new sudoer
useradd $USER
passwd $PASSWD
su root; echo "$ROOTPASSWD" && sudo echo "${user}" ALL=(ALL)       ALL' | sudo tee -a ~/Desktop/sample_sudoer_file.txt

# Update and upgrade package lists
apt-get update && apt-get upgrade

# Install packages
apt-get install curl git

# Add zsh to /etc/shells
command -v zsh | sudo tee -a /etc/shells

# User chsh to set the shell to zsh
sudo chsh -s "$(command -v zsh)" "${USER}"

# Change working directory to home directory and install oh-my-zsh from github
cd; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# rename existing shell dotfiles by appending .orig
mv ~/.zshrc ~/.zshrc.orig; mv ~/.bashrc ~/.bashrc.orig

# execute git clone of mrmachine3/preferences
git clone https://github.com/Mrmachine3/preferences.git
cd preferences; cp ./machinemode.zsh-theme ~/oh-my-zsh/themes/machinemode.zsh-theme && cp ./.zshrc ~/.zshrc
cd; source .zshrc



#TO DO LIST
# MOVE OR CREATE SYMLINK TO MACHINEMODE-THEME FILE (FROM PREFERENCES GIT REPOSITORY) INTO THE THEMES FOLDER OF OH-MY-ZSH DIRECTORY
# MOVE OR CREATE SYMLINK TO .ZSHRC FILE FROM PREFERENCES GIT REPOSITORY
