#!/bin/bash

if type -p memcached > /dev/null; then
  exit
fi

# update system
apt-get update

# install
apt-get -y install memcached