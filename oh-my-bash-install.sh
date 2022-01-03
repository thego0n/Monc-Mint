#!/bin/bash
######
# Oh My Bash Setup
######
echo "#######################################"
echo "  Oh-My-bash (Terminal Themes) Setup   "
echo "#######################################"

url=https://raw.githubusercontent.com/ohmybash/oh-my-bash/support-unattended-install/tools/install.sh
bash -c "$(curl -fsSL "$url")" --unattended
bash -c "$(wget "$url" -O -)" --unattended
sleep 1s
rm  /home/$(logname)/.bashrc
cp  /home/$(logname)/Monc-Mint/.bashrc /home/$(logname)/.bashrc
echo "Oh-My-Bash installed!!!"
sleep 2s

./finish.sh