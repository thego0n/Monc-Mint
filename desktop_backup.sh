#!/bin/sh

#####
# Install Orchis Theme
#####
git clone git@github.com:vinceliuice/Orchis-theme.git

cd Orchis-theme
sudo chmod +x install.sh
./install.sh


#####
# Install Tela Icons
#####
git clone git@github.com:vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme

sudo chmod +x install.sh
./install.sh -a


#####
# Load Desktop Settings
#####
dconf load /org/cinnamon/ < cinnamon_desktop_backup

# Remove folders
rm -r Orchis-theme/
rm -r Tela-icon-theme/
