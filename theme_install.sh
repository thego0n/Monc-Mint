#!/bin/bash


dconf load /org/cinnamon/ < dconf/cinnamon.dconf
sleep 5s
dconf load /org/nemo/ < dconf/nemo.dconf
sleep 5s
dconf load /org/gtk/ < dconf/gtk.dconf
sleep 5s
dconf load /org/gnome/ < dconf/gnome.dconf
sleep 5s

sudo ./finish.sh