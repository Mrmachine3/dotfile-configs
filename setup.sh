#!/bin/bash

#---Author: Anthony Rodriguez
#---Created Date: 10/03/2018
#---Project Tag: linux, utility, bash
#---Purpose:
#   The purpose of this script is to setup the current machine
#   with preferences.
#--->

# update and upgrade package lists
apt-get update && apt-get upgrade

# install packages
apt-get install curl git

# Add zsh to /etc/shells
command -v zsh | sudo tee -a /etc/shells

# User chsh to set the shell to zsh
sudo chsh -s "$(command -v zsh)" "${USER}"

# change working directory to home directory
cd

# git clone oh-my-zsh repository from github
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#TO DO LIST
# MOVE OR CREATE SYMLINK TO MACHINEMODE-THEME FILE (FROM PREFERENCES GIT REPOSITORY) INTO THE THEMES FOLDER OF OH-MY-ZSH DIRECTORY
# SAVE COPY OF CURRENT SHELL CONFIGURATION FILE AND MOVE OR CREATE SYMLINK TO .ZSHRC FILE FROM PREFERENCES GIT REPOSITORY
