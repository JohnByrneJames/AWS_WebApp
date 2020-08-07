#!/bin/bash

#update
sudo apt-get update

# Install Nginx
sudo apt-get install nginx

# Install NodeJS and NPM installer
sudo apt-get install nodejs
sudo apt-get install npm

# Copy over app folder
# scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@3.250.67.195:~/app/

sudo apt-get upgrade 

sudo software-properties -y    

sudo apt-get install python-software-properties -y 

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install nodejs -y 

sudo npm install

sudo node app.js