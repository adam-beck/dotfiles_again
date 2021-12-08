#!/bin/zsh

sudo apt-get install -y libevent-dev autoconf automake pkg-config libncurses-dev bison

cd $HOME
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make

sudo ln -s /home/$(whoami)/tmux/tmux /usr/bin/tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Don't forget to run `prefix + I` to install plugins"
