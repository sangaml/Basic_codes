#!/bin/bash
ROOT_UID=0

if [[ "$EUID" -ne "$ROOT_UID" ]]; then
   echo "This script must be run as root"
        exit 1
fi

check_install() {
echo
echo -e "Checking if $1 already installed"
INSTALLED=$(dpkg -l | grep $1)
if [ "$INSTALLED" != "" ]; then
   # installed
   return 0
 else
   # not installed
 return 1
fi
}

install_package() {
echo -e "Installing $1..."
apt-get install $1 -y  >>$LOGFILE 2>>$ERRORFILE
echo -e "$1 installed"
}
##########
echo -n -e"Enter the Input file/path [if]:"
read if
echo -n -e "Enter the Output file/path [op]:"
read of
echo -n -e "Enter the base sector value [bs]:"
read bs
echo -n -e "Enter the count:"
if check_install pv; then echo "installed"; else install_package pv; fi
dd if=$if bs=$bs count=$count | pv | of=$of 

