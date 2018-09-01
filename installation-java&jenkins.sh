#!/bin/#!/usr/bin/env bash

#Ubuntu18.04

#This script install java basic jdk & jenkins.


#Java installation for Jenkins in Ubuntu
sudo apt-get install -y openjdk-8-jdk awscli wget vim

#Jenkins installation in Ubuntu18.04
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
#Then add the following entry in your /etc/apt/sources.list

#This command typically doesn't work on my system.
deb https://pkg.jenkins.io/debian-stable binary/

sudo apt-get update

sleep 2

sudo apt-get install -y jenkins

sleep 2

#Levaraging the user

sudo chmod 666 /var/run/docker.sock

sudo groupadd docker

sudo usermod -a -G jenkins $user

#Test the jenkins user by below commands
sudo -u jenkins docker run hello-world

#Now login as a user Jenkins
sudo -i
su jenkins
docker run hello-world




'''#To remove jenkins
sudo service jenkins stop
sudo rm-rf /etc/apt/sources.list.d/jenkins.list
sudo rm -rf /etc/apt/sources.list.d/jenkins.list.save
sudo apt upgrade && sudo apt update && sudo apt-get remove jenkins && sudo apt-get remove --auto-remove jenkins'''

#Before starting with jenkins make sure the jenkins default shell to run docker run in the path where all docker hirererchy exists
#/var/lib/docker

cd /var/lib/docker
aws ecr get-login --region us-east-1
docker build -t hello-world .
docker tag hello-world:latest 917044978668.dkr.ecr.us-east-1.amazonaws.com/hello-world:latest
docker push 917044978668.dkr.ecr.us-east-1.amazonaws.com/hello-world:latest
