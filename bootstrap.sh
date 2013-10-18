#!/usr/bin/env bash

# add mongodb repo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# Install packages
apt-get update
apt-get install -y apache2 php5 mongodb-10gen mysql-server



rm -rf /var/www
ln -fs /vagrant/drupal /var/www
