#!/bin/bash

logfile=/home/pi/scripts/rclone_script/shutdown.log
source /home/pi/scripts/rclone_script/rclone_script.ini
source /home/pi/scripts/rclone_script/rclone_script-fns.sh

########
# MAIN #
########

if [ "${syncOnSystemStartStop}" == "TRUE" ]
then
	printf "$(date +%FT%T%:z):syncOnSystemStartStop is enabled, uploading savegames" >> "${logfile}"
	doUpSync >> "${logfile}" 2>&1
else
	printf "$(date +%FT%T%:z):syncOnSystemStartStop is disabled, skipping savegame upload" >> "${logfile}"
fi
