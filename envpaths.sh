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
PROFILE=~/.profile

# Declare variable array for directory paths
#   - Add new variables to paths array below
declare -a paths=($DESKTOP $DOWNLOADS $GITHUB_REPOS)

echo "Exporting global variables..."
echo ""

# For loop iterating through paths array
for i in "${paths[@]}"
do
    echo "Moving into $i"
    cd $i
    export $(echo ${i##*/} | tr [a-z] [A-Z])=$(pwd)
    > $LOG
    printenv | grep -i "$i" | grep -v "PWD*"> $LOG
    cat $LOG >> tee $PROFILE 
    echo "Exported $(echo ${i##*/} | tr [a-z] [A-Z]) environment variable..."
    source $PROFILE
    echo ""
    sleep 1
done

# 
echo "$0 script complete..."
