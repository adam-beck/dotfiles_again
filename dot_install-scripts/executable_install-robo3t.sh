#!/bin/zsh

cd ~/Downloads

wget https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz

tar -xvzf robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
sudo mv robo3t-1.2.1-linux-x86_64-3e50a65 /opt/robo3t

sudo ln -s /opt/robo3t/bin/robo3t /usr/bin/robo3t