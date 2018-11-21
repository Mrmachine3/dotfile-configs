#!/bin/bash

###########################################################################
# Script Name: Dropletsetup.sh
# Created Date: 11/20/2018
# Description: This script will setup a server by adding a default, 
# non-root user, grant administrative rights, set up a basic firewall, and
# enable external access by regularl, non-root sudo user. 
# Author: Mr. Machine
# Tags: firewall, sudo, infrastructure 
########################################################################### 
# Add new default user
echo -n "Enter name of new user:" && read nuser
adduser $nuser; sleep 1

# Display newly added user from /etc/pwd file
grep $nuser /etc/passwd

# TODO
# programmatically automate the initial server setup of a droplet on digital ocean
