#!/bin/bash


##Pre install
sudo rm /etc/apt/preferences.d/nosnap.pref

sudo apt update

## Apt install
sudo apt install git curl wget snapd flatpak  -y

## Snap Install
sudo snap install snappackage1 snappackage2 snappackage3

## Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


