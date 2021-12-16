#!/bin/bash


echo "-------------------------------------"
echo "--     Monc's Automated Setup      --"
echo "-------------------------------------"
sleep 2s

echo "-------------------------------------"
echo "--        Git Configuration        --"
echo "-------------------------------------"

echo "What is your name : "
read name
echo "What is your email address : "
read email

git config --global user.name $name
git config --global user.email $email

echo "Git settings configured!!"
sleep 1s


echo "-------------------------------------"
echo "--          System Setup           --"
echo "-------------------------------------"

###############
# Pre install
###############

### Activate snap store
rm /etc/apt/preferences.d/nosnap.pref &> /dev/null

#### Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |  apt-key add - &> /dev/null
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#### Update sources
apt update -y
apt upgrade -y

echo "Sources Updated"
sleep 1s

echo "Installing Snap Store and Flatpak"
apt install snapd flatpak -y

echo "Snap Store and Flatpak Installed"
echo "Commencing install of Packages"
sleep 2s


###########
# Install
###########

# Apt Install
APT_PKGS="gimp steam filezilla default-jdk google-chrome-stable thunderbird fonts-powerline"
for i in $APT_PKGS; do
  apt-get install -y $i
done

APT_DRIVERS = "adb"
for i in $APT_PKGS; do
  apt-get install -y $i
done



# Snap Install
SNAP_PKGS="android-studio discord code teams"

for i in $SNAP_PKGS; do
    snap install $i --classic
done

# Flatpak Install
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &> /dev/null


sleep 2s


echo "All Packages Installed"
sleep 1s
######
# Oh My Bash Setup
######
echo "Installing Oh-My-bash (Terminal Themes)"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
rm ~/.bashrc
cp ~/mint_setup/files/.bashrc ~/.bashrc
echo "Oh-My-Bash installed!!!"

sleep 2s

echo "Installing miniconda"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash

echo "Installed Miniconda"

apt update
apt upgrade

#######
# Desktop Setup
#######
echo "Setting up Desktop Environment"
chmod +x desktop_setup.sh
sh ./desktop_setup.sh