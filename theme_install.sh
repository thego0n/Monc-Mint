#!/bin/bash
clear
echo "-------------------------------------"
echo "--          Desktop Setup          --"
echo "-------------------------------------"
sleep 2s
#####
# Install Orchis Theme
#####

echo "Installing Orchis Theme"
git clone https://github.com/vinceliuice/Orchis-theme.git

cd Orchis-theme
chmod +x install.sh
./install.sh

echo "Orchis Theme Installed"
cd ..
sleep 2s

#####
# Install Tela Icons
#####
echo
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme

chmod +x install.sh
./install.sh
cd ..

#####
# Load Desktop Settings
#####
sudo rm -r Orchis-theme/
sudo rm -r Tela-icon-theme/

sudo ./finish.sh