#!/bin/bash
cd /home/$LOGNAME/

filename=".bashrc"

sed -i "s/powerline/agnoster/" $filename

./theme_install.sh