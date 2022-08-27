#!/bin/bash

echo "update environment"

apt-get update
apt-get update y
apt-get install apache2 -y
apt-get install unzip -y

echo "Download and copy project application files"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
