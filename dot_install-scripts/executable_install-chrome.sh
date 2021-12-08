#!/bin/zsh

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*

sudo apt-get install -fy

sudo apt-get install ./google-chrome*.deb