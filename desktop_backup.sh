#!/bin/sh
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
sudo chmod +x install.sh
./install.sh

echo "Orchis Theme Installed"
sleep 2s

#####
# Install Tela Icons
#####
echo
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme

sudo chmod +x install.sh
./install.sh -a


#####
# Load Desktop Settings
#####
#FIXME:
dconf load /org/cinnamon/ < dconf_dump.txt

# Remove folders
sudo rm -r /Orchis-theme/ -y
sudo rm -r /Tela-icon-theme/ -y
