#!/bin/bash

sudo apt-get install -y cmake libfreetype6-dev libfontconfig1-dev xclip

curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# Download, compile and install Alacritty
git clone https://github.com/jwilm/alacritty
cd alacritty
cargo install --path .

# Add Man-Page entries
sudo mkdir -p /usr/local/share/man/man1
gzip -c alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

# Add shell completion for bash and zsh
mkdir -p ~/.bash_completion
cp alacritty-completions.bash ~/.bash_completion/alacritty
echo "source ~/.bash_completion/alacritty" >> ~/.bashrc

sudo cp alacritty-completions.zsh /usr/share/zsh/functions/Completion/X/_alacritty

# Copy default config into home dir
cp alacritty.yml ~/.alacritty.yml

# Create desktop file
cp alacritty.desktop ~/.local/share/applications/

# Copy binary to path
sudo cp target/release/alacritty /usr/local/bin

# Use Alacritty as default terminal (Ctrl + Alt + T)
gsettings set org.gnome.desktop.default-applications.terminal exec 'alacritty'

# Remove temporary dir
cd ..
rm -r alacritty