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

wget https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz
tar zxvf gdu_linux_amd64.tgz
sudo mv gdu_linux_amd64 /usr/local/bin/gdu

wget https://github.com/ClementTsang/bottom/releases/latest/download/bottom_x86_64-unknown-linux-gnu.tar.gz
tar zxvf bottom_x86_64-unknown-linux-gnu.tar.gz
sudo mv btm /usr/local/bin/

rm gdu_linux_amd64.tgz
rm bottom_x86_64-unknown-linux-gnu.tar.gz

LAZYGIT_VERSION="0.40.2"

wget "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

tar -xzf "lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" lazygit

sudo mv lazygit /usr/local/bin/lazygit

rm "lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

sudo npm install -g tree-sitter-cli

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker ${USER}

sudo systemctl start docker

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
