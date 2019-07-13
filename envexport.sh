#!/bin/bash

# Defines all global paths to be exported through this script
#   - Add new paths below for export
USER=$(whoami)
HOME=/home/$USER
DESKTOP=/mnt/c/Users/atone/Desktop
DOWNLOADS=/mnt/c/Users/atone/Downloads
GITHUB_REPOS=$DESKTOP/github_repos

# Define location of output files
LOG=$HOME/setup.log
CONFIG=~/.bashrc 

# Declare variable array for directory paths 
#   - Add new variables to paths array below
declare -a paths=($DESKTOP $DOWNLOADS $GITHUB_REPOS)

echo "Exporting global variables..."

# For loop iterating through paths array
for i in "${paths[@]}"
do
    echo "  Moving into $i"
    cd $i
    echo "export $(echo ${i##*/} | tr [a-z] [A-Z])=$(pwd)" >> $CONFIG
    echo "  Exported $(echo ${i##*/} | tr [a-z] [A-Z]) environment variable..."
    sleep 1
done

# Reload config file
source ~/.bashrc
exec bash
echo "${CONFIG##*/} config file reloaded..."
echo "$0 script complete..."

### TODO
#   - Implement a logging feature to show time stamps for each variable export
#   - Try sed/awk on $CONFIG file before appending exports to file
