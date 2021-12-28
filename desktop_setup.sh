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
dconf load / < ~/Monc-Mint/.dconf_dump.txt

sudo rm -r Orchis-theme/
sudo rm -r Tela-icon-theme/

echo "######################"
echo "######################"
echo "All finished"
echo "Final reminder to generate a SSH key for github using 'ssh-keygen' in your home directory,"
echo "hit enter until it finishes, and then,"
echo "cat .ssh/id_rsa.pub,"
echo "copy that output, go to github settings, hit 'SSH and GPG keys', make a new key and paste the output."
echo "#######################"
echo "Your system will reboot in 10 seconds"
sleep 7s
reboot
