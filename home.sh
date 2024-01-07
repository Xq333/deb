#!/bin/sh

# Mise a jour du systeme
sudo apt update && sudo apt upgrade

# Installation des outils necessaires
sudo apt install -y nodejs npm wget vim kitty ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen neofetch zsh fonts-firacode

# Cloner le dépôt NeoVim et entrer dans le dossier
git clone https://github.com/neovim/neovim
cd neovim

# Compiler et installer NeoVim
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..

# Installation de spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y spotify-client

echo "alias vi=nvim" >> ~/.bashrc

echo "neofetch" >> ~/.bashrc

cp ./config/kitty.conf ~/.config/kitty/kitty.conf

mkdir -p ~/.config/neofetch 
cp ./config/neofetch.conf ~/.config/neofetch/config.conf

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
