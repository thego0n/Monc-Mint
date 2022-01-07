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
dconf load /org/cinnamon/ < cinnamon.dconf
dconf load /org/nemo/ < nemo.dconf
dconf load /org/gtk/ < gtk.dconf
dconf load /org/gnome/ < gnome.dconf

sudo ./finish.sh