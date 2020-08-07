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

# Navigate ~ /etc/nginx/sites-available/default

# Remove Default file ~ sudo rm -r default

# Create the file ~ sudo touch default | sudo nano default

# server {
#     listen 80;
#     server_name _;
#     location / {
#         proxy_pass http://localhost:3000;
#         proxy_http_version 1.1;
#         proxy_set_header Upgrade $http_upgrade;
#         proxy_set_header Connection 'upgrade';
#         proxy_set_header Host $host;
#         proxy_cache_bypass $http_upgrade;
#     }
# }

# Test NGINX file ~ sudo nginx -t

# Restart NGINX ~ sudo systemctl restart nginx

# Check Status ~ sudo systemctl status nginx

# Add environment variable and install dependencies using NPM
# export DB_HOST="mongodb://3.250.15.73:27017/posts"
cd ~/app
sudo su
npm install
node app.js