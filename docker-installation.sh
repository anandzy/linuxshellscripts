#!/bin/bash

#Ubuntu 18.04

#This script is to install Docker EE.

sudo apt-get update

sleep 2

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
sleep 1

	
DOCKER_EE_URL=https://storebits.docker.com/ee/trial/sub-545a8fe6-2fd7-4c53-990b-926db2e3e81a

sleep 1

DOCKER_EE_VERSION=stable-18.03

curl -fsSL "${DOCKER_EE_URL}/ubuntu/gpg" | sudo apt-key add -

sudo apt-key fingerprint 6D085F96

sudo add-apt-repository \
   "deb [arch=amd64] $DOCKER_EE_URL/ubuntu \
   $(lsb_release -cs) \
   $DOCKER_EE_VERSION"

   
sudo apt-get update

sleep 2

sudo apt-get install docker-ee


if [ $? -eq 0 ]; then
	echo Docker installation successfull.
else
	echo Docker installation error.
fi

sleep 1

sudo docker run hello-world

if [ $? -eq 0 ]; then
	echo Docker installation successfull.
else
	echo Docker installation error.
fi
  

'''sudo docker container run --rm -it --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock \
  docker/ucp:3.0.2 install \
  --host-address 192.168.0.14 
  --interactive'''
 
The below commands make the docker group accessable and auto enable docker. 
 
sudo groupadd docker

sudo usermod -aG docker ubuntu
  
docker run hello-world


if [ $? -eq 0 ]; then
	echo Docker running in current user sucessfully!
else
	echo Docker unableto run in current user sucessfully!
fi
  
sudo systemctl enable docker
  
echo manual | sudo tee /etc/init/docker.override
  
sudo chkconfig docker on

if [ $? -eq 0 ]; then
	echo Docker installation successfull.
else
	echo Docker installation error.
fi
  
