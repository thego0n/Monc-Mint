#!/bin/bash


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
Slack
Zoom 
Spotify 
Youtube Music"


clear

echo "######################"
echo "######################"
echo "All finished"
echo "######################"
echo "######################"
echo "Please read the following"
echo 
echo "The following software has been installed:"
for i in $SOFTWARE; do
  echo $i
  echo "____________"
done

echo "To add software to your bottom panel, press the Super (⊞ Win or ⌘ Mac) key, search for the software you want"
echo "Right click the desired software and select 'Add to Panel'"
echo 
echo "Thank you for using my script, if you have and issues or comments, please leave them on my github page"
echo
echo "***************"
echo "IMPORTANT"
echo "***************"
echo " If you have reached this section, and the theme has not been applied, please copy and paste the following
commands the terminal. This mild inconveniance is currently being debugged.

dconf load /org/cinnamon/ < dconf/cinnamon.dconf

dconf load /org/nemo/ < dconf/nemo.dconf

dconf load /org/gtk/ < dconf/gtk.dconf

dconf load /org/gnome/ < dconf/gnome.dconf"
