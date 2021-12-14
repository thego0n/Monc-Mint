#!/bin/bash

######
# Pre install
######

# Activate snap store
sudo rm /etc/apt/preferences.d/nosnap.pref

# Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Update sources
sudo apt update

sudo apt install snapd flatpak -y

#######
# Install
#######

# Apt Install
sudo apt install git curl wget -y
sudo apt install gimp filezilla default-jdk google-chrome-stable thunderbird -y

# Snap Install
sudo snap install teams 
sudo snap install android-studio --classic
sudo snap install discord --classic

# Flatpak Install
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

######
# ZSH Setup
######

sudo apt install zsh
chsh -s $(which zsh)

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp .zshrc ~/.zshrc
export PATH=$HOME/bin:/usr/local/bin:$PATH



#######
# Desktop Setup
#######
./desktop_backup