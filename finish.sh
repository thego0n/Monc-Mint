#!/bin/bash


SOFTWARE="Gimp 
Steam 
Filezilla 
Openjdk 
MariaDB 
VLC
GitKraken
Google Chrome 
Thunderbird 
Android Studio
IntelliJ
VSCode 
Discord 
Microsoft Teams
Slack
Zoom 
Spotify"


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
echo "Please visit https://snapcraft.io/ to download more software that you may require"
echo
echo "To add software to your bottom panel, press the Super (⊞ Win or ⌘ Mac) key, search for the software you want"
echo "Right click the desired software and select 'Add to Panel'"
echo 
echo "Thank you for using my script, if you have and issues or comments, please leave them on my github page"
echo
echo "***************"
echo "IMPORTANT"
echo "***************"
echo " If you have reached this section, and the theme has not been applied, please copy and paste the following
command into this terminal. This mild inconveniance is currently being debugged.

dconf load / < dconf/windows.dconf
"
