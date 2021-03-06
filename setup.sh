#!/bin/bash
# map all hosts in /etc/hosts 
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce -y
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu
docker swarm init --help
# docker swarm init --describe-addr

# copy join-token and execute this command on worker node
