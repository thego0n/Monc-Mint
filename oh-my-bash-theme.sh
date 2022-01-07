#!/bin/bash
cd ..

sed -i "s/font/agnoster/" .bashes

cd Monc-Mint/
./theme_install.sh
