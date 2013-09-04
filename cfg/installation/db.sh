#!/bin/bash

if type -p psql > /dev/null; then
  exit
fi

# fixes LATIN1 DB encoding
export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# update system
apt-get update

# install main db dep
apt-get -y install postgresql postgresql-contrib-9.1 postgresql-server-dev-9.1

# setup db
sudo su postgres -c"echo \"host all all 0.0.0.0/0 md5\" >> /etc/postgresql/9.1/main/pg_hba.conf"
sudo su postgres -c"echo \"listen_addresses = '*'\" >> /etc/postgresql/9.1/main/postgresql.conf"

# setup application db
sudo su postgres -c"psql -U postgres -c \"ALTER USER postgres WITH PASSWORD 'password';\""
sudo su postgres -c'psql -U postgres -c "CREATE DATABASE sample;"'

# reload the config
/etc/init.d/postgresql restart
