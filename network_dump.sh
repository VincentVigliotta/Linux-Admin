#!/bin/bash
#Vincent Vigliotta
#Network Dump Script
#This script will dump various network related information and print it to the command line and to afile named netinfo, which is stored in the etc directory with the other configuration and information files for the system

#Print IP address to command line
hostname -i
#Append IP address to the file
echo IP Address: >> /etc/netinfo
hostname -i >> /etc/netinfo

#Print all open ports to command line
ss
#Append all open ports to the file
echo Open Ports: >> /etc/netinfo
ss >> /etc/netinfo

#Print the arp (address resoultion protocol) table to command line
arp
#Append the arp table to the file
echo ARP Table >> /etc/netinfo
arp >> /etc/netinfo

#Print the DNS server to command line, using exit command to make sure only the first entry is grabbed
awk '{print $1;exit;}' /etc/hosts
#Append the DNS server to the file
echo DNS Server: >> /etc/netinfo
awk '{print $1;exit;}' /etc/hosts
