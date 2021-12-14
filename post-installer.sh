#!/bin/bash


echo "-------------------------------------"
echo "--     Monc's Automated Setup      --"
echo "-------------------------------------"
sleep 2s
echo "-------------------------------------"
echo "--          System Setup           --"
echo "-------------------------------------"

###############
# Pre install
###############

### Activate snap store
sudo rm /etc/apt/preferences.d/nosnap.pref &> /dev/null

#### Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &> /dev/null
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#### Update sources
sudo apt update

echo "Sources Updated"
sleep 1s

echo "Installing Snap Store and Flatpak"
sudo apt install snapd flatpak -y

echo "Snap Store and Flatpak Installed"
echo "Commencing install of Packages"
sleep 2s


###########
# Install
###########

# Apt Install
APT_PKGS="gimp filezilla default-jdk google-chrome-stable thunderbird"
for i in $APT_PKGS; do
  sudo apt-get install -y $i &> /dev/null
  echo "$i installed"
done



# Snap Install
SNAP_PKGS="teams"
CLASSIC_SNAP_PKGS="android-studio discord"

for i in $SNAP_PKGS; do
    sudo snap install $i
    echo "$i installed"
done

for i in $CLASSIC_SNAP_PKGS; do
    sudo snap install $i --classic
    echo "$i installed"
done


# Flatpak Install
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &> /dev/null


sleep 3s


echo "All Packages Installed"
sleep 1s
######
# ZSH Setup
######
echo "Installing zsh terminal"

sudo apt install zsh
sudo chsh -s $(which zsh)

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp .zshrc ~/.zshrc
export PATH=$HOME/bin:/usr/local/bin:$PATH

echo "zsh terminal installed with all themes from 'Oh-My-Zsh!'"


sleep 2s


#######
# Desktop Setup
#######
echo "Setting up Desktop Environment"
sudo chmod +x .desktop_backup.sh
sh ./desktop_backup.sh