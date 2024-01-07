#!/bin/sh

mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

fc-cache -f -v

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

echo "unsetopt BEEP" >> ~/.zshrc
echo "neofetch" >> ~/.zshrc
echo "alias vi=nvim" >> ~/.zshrc

