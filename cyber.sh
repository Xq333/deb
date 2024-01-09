#!/bin/sh

sudo apt-get update
sudo apt-get install ufw -y

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw enable

sudo apt-get install virtualbox virtualbox-dkms -y

sudo vboxreload

sudo apt-get install openvpn -y

sudo apt-get install nmap -y

sudo apt-get install gobuster -y

sudo apt-get install inetutils -y

sudo apt-get install smbclient -y

sudo apt-get install redis-server -y

sudo apt-get install freerdp2-x11 -y

sudo apt-get install mongodb -y

sudo apt-get install rsync -y

sudo apt-get install mariadb-server -y

sudo apt-get install john -y

sudo apt-get install python3-pip -y

sudo apt-get install python3-netifaces -y

sudo apt-get install responder -y

sudo apt-get install net-tools -y

sudo apt-get install ruby -y

sudo apt-get install openssl -y

sudo apt-get install awscli -y

sudo apt-get install ltrace -y

sudo apt-get install radare2 -y

sudo apt-get install hydra -y

echo 'export PATH="$PATH:/$HOME/.local/share/gem/ruby/3.0.0/bin"' >> ~/.bashrc

sudo gem install winrm winrm-fs stringio

sudo gem install evil-winrm
