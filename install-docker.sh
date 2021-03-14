#!/bin/bash 
# install ubuntu

sudo apt update 

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce >> install-docker.log

sudo apt install -y docker-ce

sudo systemctl status docker >> install-docker.log

# asignamos usuario ubuntu
sudo usermod -aG docker ${USER}

id -nG >> install-docker.log

echo "instalando docker-compose"

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo mkdir -p /data-docker/
sudo chown -R $USER:www-data /data-docker

