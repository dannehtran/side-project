#!/usr/bin/env bash

apt-get update -y

# Install Docker repositories
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to host
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"    

# Update new repositories
apt-get update -y

# Install Docker
apt-get install docker-ce docker-ce-cli containerd.io -y

# Adds Docker group if does not exist 
groupadd docker

# Assign user group as docker
usermod -aG docker vagrant

# Download docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Change docker-compose to executable
chmod +x /usr/local/bin/docker-compose

# Symbolic link to /usr/bin path
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose