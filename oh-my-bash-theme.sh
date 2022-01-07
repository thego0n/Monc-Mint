#!/bin/bash
cd /home/$LOGNAME/

filename=".bashrc"

sed -i "s/font/agnoster/" $filename

cd Monc-Mint/
./theme_install.sh