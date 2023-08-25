#!/bin/bash

echo "Update packages"
apt-get update -y

echo "install apache"
apt-get install apache2 -y

echo "install unzip"
apt-get install unzip -y

echo "Download project and unzip it to /tmp"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp
unzip /tmp/main

echo "Copy project folder and move to /var/www/html/"
cp -R ./linux-site-dio-main/*  /var/www/html/

