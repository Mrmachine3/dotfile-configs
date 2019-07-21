#!/bin/bash
# Define log variables
DATESTAMP=$(date +"%m-%d-%Y %T")
LOGLEVEL="INFO"
ZZZ=2

# Define location of output files
LOGPATH=/var/log/$HOSTNAME/
LOG=/var/log/$HOSTNAME/setup.log
CONFIG=~/.bashrc 

# Test if log directory exists
if [ $LOGLEVEL == "DEBUG" ];
    then
        echo "" > $LOG.debug
        echo "Cleared log for debugging purposes..."
fi

# GLOBAL ENVIRONMENT PATH VARIABLES
# Defines all global paths to be exported through this script
#   - Add new paths below for export
USER=$(whoami)
HOME=/home/$USER
DESKTOP=/mnt/c/Users/atone/Desktop
DOWNLOADS=/mnt/c/Users/atone/Downloads
GITHUB_REPOS=$DESKTOP/github_repos

# Declare variable array for directory paths 
#   - Add new variables to paths array below
declare -a paths=($DESKTOP $DOWNLOADS $GITHUB_REPOS)

    echo -e "Initiating $0 script..."
    sleep $ZZZ
    echo -e "Exporting global environment path variables..."
    echo "" >> $CONFIG
    echo -e "####\n# GLOBAL ENVIRONMENT PATH VARIABLES\n####" >> $CONFIG

# For loop iterating through paths array
for i in "${paths[@]}"
    do
        echo "  Moving into $i" && cd $i
        echo "export $(echo ${i##*/} | tr [a-z] [A-Z])=$(pwd)" >> $CONFIG
        echo -e "  Exported $(echo ${i##*/} | tr [a-z] [A-Z]) environment path variable...\n"
        sudo echo "$DATESTAMP $0 $LOGLEVEL $(printf ' %b' "$USER exported $(echo ${i##*/} | tr [a-z] [A-Z]) environment path variable on $(echo $HOSTNAME | tr [a-z] [A-Z])")" >> $LOG
        sleep $ZZZ
    done

# GLOBAL ENVIRONMENT VARIABLES
    echo "Exporting global environment variables..."
    echo "" >> $CONFIG
    echo -e "####\n# GLOBAL ENVIRONMENT PATH VARIABLES\n####" >> $CONFIG
#    echo -e "  Exported SECRETS environment path variable...\n"
#    echo -e "  Exported API KEYS environment path variable...\n"
#    echo "$DATESTAMP $0 $LOGLEVEL $(printf ' %b' "$USER exported DATESTAMP environment path variable on $HOSTNAME")" >> $LOG
    sleep $ZZZ

# Reload config file
cd $HOME && source ~/.bashrc
echo -e "${CONFIG##*/} config file reloaded...\n$0 script complete..."
exec bash

### TODO
#   - Try sed/awk on $CONFIG file before appending exports to file
