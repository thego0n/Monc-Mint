#!/bin/bash

clear

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
  exit
fi

echo "-------------------------------------"
echo "--          Monc-Mint              --"
echo "-------------------------------------"
sleep 2s

echo "-------------------------------------"
echo "--       Git Configuration         --"
echo "-------------------------------------"

echo "What is your name : "
read name
echo "What is your email address : "
read email

git config --global user.name $name
git config --global user.email $email

echo "Git settings configured!!"
sleep 1s

clear
echo "-------------------------------------"
echo "--         System Setup            --"
echo "-------------------------------------"

###############
# Pre install
###############

### Activate snap store
rm /etc/apt/preferences.d/nosnap.pref &> /dev/null

#### Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |  apt-key add - &> /dev/null
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#### Update sources
sudo apt update -y
sudo apt upgrade -y

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
APT_PKGS="gimp 
steam 
filezilla 
default-jdk 
mariadb-server 
google-chrome-stable 
thunderbird
vlc 
fonts-powerline
tlp
libsass1
sassc"

for i in $APT_PKGS; do
  sudo apt-get install -y $i
done

APT_DRIVERS="adb"
for i in $APT_DRIVERS; do
  sudo apt-get install -y $i
done

sudo tlp start

# Snap Install
SNAP_PKGS="android-studio intellij-idea-community discord code teams slack zoom-client gitkraken spotify youtube-music-desktop-app marsshooter"

for i in $SNAP_PKGS; do
    sudo snap install $i --classic
done

# Flatpak Install
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &> /dev/null


sleep 2s


echo "All Packages Installed"
sleep 1s

sudo apt update
sudo apt upgrade





#####
# Oh My Bash Install
#####
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)" --unattended



echo "-------------------------------------"
echo "--      Desktop/Theme Setup        --"
echo "-------------------------------------"
sleep 2s

cd ..
sed -i "s/font/agnoster/" .bashrc
cd Monc-Mint/

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
echo "Please allow 30 seconds for the desktop theme to apply"
sleep 2s

echo "Loading Cinnamon Settings"
dconf load /org/cinnamon/ < dconf/cinnamon.dconf
sleep 3s

echo "Loading File Explorer Settings"
dconf load /org/nemo/ < dconf/nemo.dconf
sleep 3s

echo "Loading GTK Settings"
dconf load /org/gtk/ < dconf/gtk.dconf
sleep 3s

echo "Loading Terminal Settings"
dconf load /org/gnome/ < dconf/gnome.dconf

sudo ./finish.sh
