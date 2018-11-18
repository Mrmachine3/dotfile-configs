#!/bin/bash

###########################################################################
# Script Name: showip.sh
# Created Date: 11/18/2018
# Description: simple bash script to show public ip address of localhost
# Author: Mr. Machine
# Tags: networking, bash
########################################################################### 

# Args
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
