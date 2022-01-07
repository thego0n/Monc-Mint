#!/bin/bash

url=https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh
bash -c "$(wget "$url" -O -)" --unattended
sudo cp -f .bashrc ~/.bashrc

sudo ./theme_install.sh
