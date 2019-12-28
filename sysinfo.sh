# bin/bash

# Email at kehindeakinsanya7@gmail.com for any error
figlet "SYSTEM INFO"

# This script script will return the following set of system information:
echo -e "\e[31;43m***** HOSTNAME INFORMATION *****\e[0m"
hostnamectl
echo ""

# File system disk space usage:
echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -h
echo ""
# Free and used memory in the system:
echo -e "\e[31;43m***** FREE AND USED MEMORY *****\e[0m"
free
echo ""
# System uptime and load:
echo -e "\e[31;43m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""
# Logged-in users:
echo -e  "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
who
echo ""
# Top 5 memory cosuming prcoesses
echo -e "\e[31;43m***** TOP 5 MEMORY COSUMING PROCESSES *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""
echo -e "\e[1;32mDone.\e[0m"

whiptail --title "System Info" --msgbox "System information has been displayed below Any error please email me at kehindeakinsanya7@gmail.com. PLEASE CONTRIBUTE ON GITHUB TO ADD MORE." 8 78

