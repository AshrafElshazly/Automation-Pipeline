#!/bin/bash
sudo apt-get update -y
sudo apt-get install python3-pip -y
sudo apt-get install -y git
sudo apt-get update
sudo apt-get install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo apt-get install -y docker.io
sudo usermod -a -G docker ubuntu
newgrp docker
sudo systemctl start docker
