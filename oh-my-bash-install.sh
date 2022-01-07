#!/bin/bash

bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)" --unattended
sudo cp -f .bashrc /home/{$LOGNAME}/.bashrc

./theme_install.sh
