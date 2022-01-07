#!/bin/bash
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
./install.sh

cd ..
sleep 2s

#####
# Install Tela Icons
#####
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme

./install.sh
cd ..

sudo rm -r Orchis-theme/
sudo rm -r Tela-icon-theme/

######
# Load theme and desktop settings
######
echo "-------------------------------------"
echo "--        Installing Theme         --"
echo "-------------------------------------"
sleep 2s

dconf load /org/cinnamon/ < dconf/cinnamon.dconf
dconf load /org/nemo/ < dconf/nemo.dconf
dconf load /org/gtk/ < dconf/gtk.dconf
dconf load /org/gnome/ < dconf/gnome.dconf

sudo ./finish.sh