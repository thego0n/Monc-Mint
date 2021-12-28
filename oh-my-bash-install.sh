#!/bin/bash
######
# Oh My Bash Setup
######
echo "#######################################"
echo "  Oh-My-bash (Terminal Themes) Setup   "
echo "#######################################"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sleep 1s
rm  /home/$(logname)/.bashrc
cp  /home/$(logname)/Monc-Mint/.bashrc /home/$(logname)/.bashrc
echo "Oh-My-Bash installed!!!"
sleep 2s

./finish.sh