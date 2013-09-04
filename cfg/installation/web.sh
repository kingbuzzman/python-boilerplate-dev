#!/bin/bash

# update system
apt-get update

# install main python dep
apt-get -y install build-essential python python-dev python-pip

# install dev python dep
apt-get -y install git-core binutils libproj-dev gdal-bin python-psycopg2 libpq-dev libxml2-dev libxslt-dev

# install web
apt-get -y install nginx
pip install gunicorn

# setup gunicorn
cp /vagrant/cfg/installation/upstart/gunicorn.conf /etc/init/gunicorn.conf

# setup nginx
cp /vagrant/cfg/installation/upstart/nginx.conf /etc/nginx/sites-available/default
