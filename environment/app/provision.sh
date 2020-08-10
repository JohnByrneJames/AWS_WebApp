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
# ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@54.217.53.47

sudo apt-get upgrade 

sudo software-properties -y    

sudo apt-get install python-software-properties -y 

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install nodejs -y 

sudo npm install

sudo node app.js

# When I do the Proxy here - 
# I am going to add the reverse proxy to be done automatically.

cd /etc/nginx/sites-available

sudo rm -r default

sudo ln -s /home/ubuntu/environment/app/default /etc/nginx/sites-available/default

sudo nginx -t

sudo systemctl restart nginx

sudo systemctl status nginx

# Add environment variable and install dependencies using NPM
# export DB_HOST="mongodb://52.50.99.35:27017/posts"

cd ~/app
sudo su
npm install
npm test
node app.js