#!/bin/bash

# update system
apt-get update

apt-get -y install python python-pip

# setup hostnames
echo "127.0.0.1 db.dev.example.com memcached.dev.example.com" >> /etc/hosts

# setup dev server
pip install -r /vagrant/cfg/requirements/pip.txt

# setup django server
cp /vagrant/cfg/installation/upstart/django.conf /etc/init/django.conf

# start server
# start gunicorn
start django
/etc/init.d/nginx start

# install node
apt-get -y install python-software-properties python g++ make
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get -y install nodejs

# install coffee-script
npm install -g coffee-script
cp /vagrant/cfg/installation/upstart/coffee.conf /etc/init/coffee.conf
