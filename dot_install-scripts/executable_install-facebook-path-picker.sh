#!/bin/zsh

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo pip install future
rm get-pip.py

cd $HOME
git clone https://github.com/facebook/PathPicker.git
cd PathPicker/debian
./package.sh 
ls ../fpp_0.7.2_noarch.deb