#!/bin/bash
#---Author: Anthony Rodriguez
#---Created Date: 10/03/2018
#---Project Tag: linux, utility, bash
#---Purpose:
#   The purpose of this script is to restart the wireless interface.
#   Additionally, this script is added as a cron job to run every 5 minutes.
#--->

# The IP for the server you wish to ping (8.8.8.8 is a public Google DNS server)
SERVER=8.8.8.8

# Only send two pings, sending output to /dev/null
ping -c2 ${SERVER} > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
    # Restart the wireless interface
    ifdown --force wlan0
    ifup wlan0
fi
