#!/bin/bash
#Vincent Vigliotta
#Directory Changes Script
#This script will detect changes to the /var/log directory using the inotifywait command and send the ouput to a text file stored in the /etc directory
#Please note: inotify-tools package is needed to run this script!
#Run the inotifywait command on the /var/log directory and send output to the dirchanges.txt file
inotifywait /var/log -d -o /etc/dirchanges.txt
