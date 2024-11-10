#!/usr/bin/env bash

user=$(whoami)

info(){
    read -n 1 -p "  
    System toolkit
        please select:
        1. Display system information
        2. display disk space
        3. display home space utilization
        0. quit
    Enter selection [0-3]: " selection
    
    echo ""
    
    case $selection in
        1) echo "Hostname: $(cat /etc/hostname)" && uptime ;;
        2) df -ah | grep /dev/sd ;;
        3) echo "Home Space Utilization ($user)" && df -ah /home/$user ;;
        0) exit ;;
        *) echo "please select a correct number. " ;;
    esac
}

while true; do
    info 
    echo "select option or press 0 to exit "
done 
