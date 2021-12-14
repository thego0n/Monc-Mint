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
CLASSIC_SNAP_PKGS="android-studio discord code"

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
# Oh My Bash Setup
######
echo "Installing Oh-My-bash (Terminal Themes)"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cp .bashrc ~/.bashrc
echo "Oh-My-Bash in stalled!!!"

sleep 2s

echo "Installing miniconda"
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash

echo "Installed Miniconda"


#######
# Desktop Setup
#######
echo "Setting up Desktop Environment"
sudo chmod +x .desktop_backup.sh
sh ./desktop_backup.sh