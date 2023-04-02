#!/bin/bash
#Vincent Vigliotta
#Montior Hidden Files Script
#This script will run the stat command on any hidden files in the /var/log directory and prin the results to a file in the /etc directory
#The stat command will return information on the files in question, like when it was last modified, who last accessed it, etc.
stat /var/log/.* > /etc/hiddenfilechanges.txt
