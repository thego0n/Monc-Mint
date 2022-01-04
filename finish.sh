#!/bin/bash

dconf load /org/cinnamon/ < desktop_conf.txt


SOFTWARE="Gimp 
Steam 
Filezilla 
Openjdk 
MariaDB 
Google Chrome 
Thunderbird 
Android Studio 
Discord 
VSCode 
Microsoft Teams 
Zoom 
Spotify 
Youtube Music"


clear

echo "######################"
echo "######################"
echo "All finished"
echo "######################"
echo "######################"
echo 
echo 
echo "The following software has been installed:"
for i in $SOFTWARE; do
  echo $i
  echo "____________"
done

echo "To add software to your bottom panel, press the Super (⊞ Win or ⌘ Mac) key, search for the software you want"
echo "Right click the desired software and select 'Add to Panel'"
echo 
echo "Thank you for using my script, if you have amd issues or comments, please leave them on my github page"
echo
echo "You should reboot the system to finalise all changes"