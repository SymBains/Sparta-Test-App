#!/bin/bash

# update
sudo apt update -y

# upgrade
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

# install nginx
sudo apt install nginx -y

# restart nginx
sudo systemctl restart nginx

# enable nginx
sudo systemctl enable nginx

# get app code - cannot use scp! (hint: use github and git)
git clone https://github.com/SymBains/Sparta-Test-App.git

# install nodejs version 20.x
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# check version
node -v

# cd into app directory inside the cloned repo
cd Sparta-Test-App/app

# install app
sudo npm install

# start app
sudo npm start app.js & 


