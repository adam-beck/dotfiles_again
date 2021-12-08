#!/bin/zsh

cd ~/Downloads

curl https://dl.pstmn.io/download/latest/linux64 -o Postman.tar.gz
sudo tar -xzf Postman.tar.gz -C /opt
rm Postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/Postman
